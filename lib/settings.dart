import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sugoi_rss_viewer/settings_types.dart';

class SettingsWidget extends StatelessWidget {
  const SettingsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Settings"),
          leading: BackButton(
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Container(
            padding: const EdgeInsets.all(8),
            child: const Column(children: [
              RSSFeedSettings(),
            ])));
  }
}

class RSSFeedSettings extends StatefulWidget {
  const RSSFeedSettings({super.key});

  @override
  State<RSSFeedSettings> createState() => _RSSFeedSettingsState();
}

class _RSSFeedSettingsState extends State<RSSFeedSettings> {
  final List<String> _rssFeeds = [];

  final TextEditingController _rssFeedController = TextEditingController();

  void addRssFeed(String newUrl) async {
    final settings = await getRssSettings();

    settings.feeds.add(RSSFeedEntry(url: newUrl));
    await saveRssSettings(settings);

    setState(() {
      _rssFeeds.add(newUrl);
    });
  }

  void removeRssFeedAt(int index) async {
    final settings = await getRssSettings();

    settings.feeds.removeAt(index);
    await saveRssSettings(settings);

    setState(() {
      _rssFeeds.removeAt(index);
    });
  }

  @override
  void initState() {
    super.initState();
    initRssFeeds();
  }

  Future<void> saveRssSettings(RSSSettings settings) async {
    final instance = await SharedPreferences.getInstance();
    instance.setString("rssSettings", jsonEncode(settings.toJson()));
  }

  void initRssFeeds() async {
    final settings = await getRssSettings();
    setState(() {
      _rssFeeds.addAll(settings.feeds.map((e) => e.url));
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> rssTexts = [];
    for (int i = 0; i < _rssFeeds.length; i++) {
      final url = _rssFeeds[i];
      rssTexts.add(RSSFeedSettingsEntry(
        url: url,
        onDelete: () {
          removeRssFeedAt(i);
        },
      ));
    }

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Text("RSS Feed settings",
          style: TextStyle(fontWeight: FontWeight.bold)),
      Container(
          margin: const EdgeInsets.only(left: 4),
          child: Column(
            children: rssTexts,
          )),
      Row(children: [
        Expanded(child: TextField(controller: _rssFeedController)),
        ElevatedButton(
            onPressed: () {
              addRssFeed(_rssFeedController.text);
              _rssFeedController.clear();
            },
            child: const Text("Add"))
      ])
    ]);
  }
}

class RSSFeedSettingsEntry extends StatelessWidget {
  final String url;
  final void Function()? onDelete;

  const RSSFeedSettingsEntry({
    super.key,
    required this.url,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      IconButton(
        icon: const Icon(Icons.delete),
        onPressed: () {
          if (onDelete != null) {
            onDelete!();
          }
        },
      ),
      Text(url)
    ]);
  }
}

Future<RSSSettings> getRssSettings() async {
  final instance = await SharedPreferences.getInstance();
  final feedsJson = instance.getString("rssSettings");

  if (feedsJson != null) {
    final feeds = RSSSettings.fromJson(jsonDecode(feedsJson));
    return feeds;
  }

  return RSSSettings(feeds: []); // initial value
}
