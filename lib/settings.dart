import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';
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

  final TextEditingController _rssRetentionDaysController =
      TextEditingController();
  final TextEditingController _rssFeedController = TextEditingController();

  void addRssFeed(String newUrl) async {
    final settings = await getRssSettings();

    settings.feeds.add(RSSFeedEntry(url: newUrl));
    await saveRssSettings(settings);

    setState(() {
      _rssFeeds.add(newUrl);
    });
  }

  void _modifyRetentionDays(int days) async {
    final settings = await getRssSettings();

    settings.rssRetentionDays = days;
    await saveRssSettings(settings);
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
    final box = await Hive.openBox("settings");
    box.put("rssFeedEntries", settings.feeds);
    box.put("rssRetentionDays", settings.rssRetentionDays);
  }

  void initRssFeeds() async {
    final settings = await getRssSettings();
    setState(() {
      _rssFeeds.addAll(settings.feeds.map((e) => e.url));
      _rssRetentionDaysController.text = settings.rssRetentionDays.toString();
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
      const Text("RSS retention duration (in days)",
          style: TextStyle(fontWeight: FontWeight.bold)),
      TextField(
          controller: _rssRetentionDaysController,
          keyboardType: TextInputType.number,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          onChanged: (newDays) {
            final parsed = int.parse(newDays);
            if (parsed < 0) {
              return;
            }
            _modifyRetentionDays(parsed);
          }),
      const Text("RSS feed URLs",
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
  final box = await Hive.openBox("settings");
  final defaults = makeDefaultRSSSettings();

  final feeds = box.get("rssFeedEntries", defaultValue: defaults.feeds)
      as List<RSSFeedEntry>;

  final rssRetentionDays = box.get("rssRetentionDays",
      defaultValue: defaults.rssRetentionDays) as int;

  return RSSSettings(feeds: feeds, rssRetentionDays: rssRetentionDays);
}
