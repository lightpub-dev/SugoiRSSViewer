import 'package:flutter/material.dart';
import 'package:sugoi_rss_viewer/letter_icon.dart';
import 'package:sugoi_rss_viewer/rss_types.dart';

class RSSCard extends StatelessWidget {
  final RSSItem item;

  const RSSCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(8),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
          Text(item.title ?? '(タイトルなし)',
              style: const TextStyle(fontWeight: FontWeight.bold)),
          Container(
              margin: const EdgeInsets.only(left: 8),
              child: Text(item.description ?? '(説明なし)'))
        ]));
  }
}
