import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:xml/xml.dart';
import './rss_types.dart';

class RSSFetcher {
  final http.Client _client = http.Client();

  RSSFetcher();

  Future<XmlDocument> fetch(Uri uri) async {
    final response = await _client.get(uri);
    return XmlDocument.parse(response.body);
  }
}

class InvalidRSSException implements Exception {
  final String message;

  InvalidRSSException(this.message);
}

class RSSProcessor {
  final XmlDocument document;

  RSSChannel? _channel;
  List<RSSItem>? _items;

  RSSProcessor({
    required this.document,
  });

  void _process() {
    // debugPrint("processing document: $document");
    final root = document.rootElement;
    final channelElements = root.findElements('channel');
    if (channelElements.isEmpty) {
      throw InvalidRSSException('No channel element found');
    }
    final channelElement = channelElements.first;
    _channel = RSSChannel(
        title: _mustGet(channelElement, "title"),
        link: _mustGet(channelElement, "link"),
        description: _mustGet(channelElement, "description"));

    _items = root.findAllElements('item').map((itemElement) {
      final title = _mayGet(itemElement, 'title');
      final description = _mayGet(itemElement, 'description');
      if (title == null && description == null) {
        throw InvalidRSSException('No title or description found');
      }
      final link = _mayGet(itemElement, 'link');
      final pubDate = _mayGet(itemElement, 'pubDate');

      return RSSItem(
          channel: getChannel(),
          title: title,
          link: link,
          description: description,
          pubDate: pubDate != null ? mustParseRfc822(pubDate) : null);
    }).toList();
  }

  static String _mustGet(XmlElement xml, String tag) {
    final elements = xml.findElements(tag);
    if (elements.isEmpty) {
      throw InvalidRSSException('No $tag element found');
    }
    return elements.first.innerText;
  }

  static String? _mayGet(XmlElement xml, String tag) {
    final elements = xml.findElements(tag);
    if (elements.isEmpty) return null;
    return elements.first.innerText;
  }

  RSSChannel getChannel() {
    if (_channel == null) {
      _process();
    }
    return _channel!;
  }

  List<RSSItem> getItems() {
    if (_items == null) {
      _process();
    }
    return _items!;
  }
}

const _MONTHS = {
  'Jan': '01',
  'Feb': '02',
  'Mar': '03',
  'Apr': '04',
  'May': '05',
  'Jun': '06',
  'Jul': '07',
  'Aug': '08',
  'Sep': '09',
  'Oct': '10',
  'Nov': '11',
  'Dec': '12',
};

// from https://stackoverflow.com/questions/62289404/parse-rfc-822-date-and-make-timezones-work
DateTime? parseRfc822(String input) {
  const _MONTHS = {
    'Jan': '01',
    'Feb': '02',
    'Mar': '03',
    'Apr': '04',
    'May': '05',
    'Jun': '06',
    'Jul': '07',
    'Aug': '08',
    'Sep': '09',
    'Oct': '10',
    'Nov': '11',
    'Dec': '12',
  };

  input = input.replaceFirst('GMT', '+0000');

  final splits = input.split(' ');

  final splitYear = splits[3];

  final splitMonth = _MONTHS[splits[2]];
  if (splitMonth == null) return null;

  var splitDay = splits[1];
  if (splitDay.length == 1) {
    splitDay = '0$splitDay';
  }

  final splitTime = splits[4], splitZone = splits[5];

  var reformatted = '$splitYear-$splitMonth-$splitDay $splitTime $splitZone';

  return DateTime.tryParse(reformatted);
}

DateTime mustParseRfc822(String input) {
  final result = parseRfc822(input);
  if (result == null) {
    throw InvalidRSSException('Invalid RFC822 date: $input');
  }
  return result;
}
