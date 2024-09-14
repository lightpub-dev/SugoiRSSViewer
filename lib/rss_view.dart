import 'package:flutter/material.dart';
import 'package:sugoi_rss_viewer/rss_types.dart';

class RSSCard extends StatelessWidget {
  final RSSItem item;

  const RSSCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(8),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(item.title ?? '(タイトルなし)'),
          Text(item.description ?? '(説明なし)')
        ]));
  }
}
