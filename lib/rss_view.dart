import 'package:flutter/material.dart';
import 'package:sugoi_rss_viewer/letter_icon.dart';
import 'package:sugoi_rss_viewer/rss_types.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class RSSCard extends StatelessWidget {
  final RSSItem item;

  const RSSCard({super.key, required this.item});

  Future<void> _launchUrl() async {
    if (item.link == null) {
      return;
    }
    final uri = Uri.parse(item.link!);
    if (!await launchUrl(uri)) {
      debugPrint("Failed to launch URL: $uri");
    }
  }

  @override
  Widget build(BuildContext context) {
    final description = item.description ?? '(説明なし)';

    return Container(
        padding: const EdgeInsets.all(8),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(children: [
              LetterIcon(letters: item.channel.title),
              Container(
                  margin: const EdgeInsets.only(left: 8),
                  child: Text(
                    item.channel.title,
                    style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.bold),
                  )),
            ]),
            Text(item.pubDate?.toLocal().toIso8601String() ?? '(日付なし)'),
          ]),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {
                _launchUrl();
              },
              child: Text(item.title ?? '(タイトルなし)',
                  style: const TextStyle(fontWeight: FontWeight.bold)),
            ),
          ),
          Container(
              margin: const EdgeInsets.only(left: 8, top: 8),
              child: SelectionArea(child: HtmlWidget(description)))
        ]));
  }
}
