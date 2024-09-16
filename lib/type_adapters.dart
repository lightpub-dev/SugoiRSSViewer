import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:sugoi_rss_viewer/rss_types.dart';
import 'package:sugoi_rss_viewer/settings_types.dart';

class RSSFeedEntryAdapter extends TypeAdapter<RSSFeedEntry> {
  @override
  final typeId = 0;

  @override
  RSSFeedEntry read(BinaryReader reader) {
    final r = reader.read() as String;
    return RSSFeedEntry.fromJson(jsonDecode(r));
  }

  @override
  void write(BinaryWriter writer, RSSFeedEntry obj) {
    final r = jsonEncode(obj.toJson()).toString();
    writer.write(r);
  }
}

class RSSItemAdapter extends TypeAdapter<RSSItem> {
  @override
  final typeId = 0;

  @override
  RSSItem read(BinaryReader reader) {
    final r = reader.read() as String;
    return RSSItem.fromJson(jsonDecode(r));
  }

  @override
  void write(BinaryWriter writer, RSSItem obj) {
    final r = jsonEncode(obj.toJson()).toString();
    writer.write(r);
  }
}
