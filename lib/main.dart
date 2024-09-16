import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sugoi_rss_viewer/rss.dart';
import 'package:sugoi_rss_viewer/rss_types.dart';
import 'package:sugoi_rss_viewer/rss_view.dart';
import 'package:sugoi_rss_viewer/settings.dart';
import 'package:sugoi_rss_viewer/type_adapters.dart';

void main() async {
  await Hive.initFlutter();

  Hive.registerAdapter(RSSFeedEntryAdapter());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SugoiRSSViewer',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Sugoi RSS Viewer'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<RSSItem>? rssItems;

  bool refreshing = false;

  @override
  void initState() {
    super.initState();

    fetchRSSItems();
  }

  void fetchRSSItems() async {
    try {
      setState(() {
        refreshing = true;
      });
      await _doFetchRSSItems();
    } finally {
      setState(() {
        refreshing = false;
      });
    }
  }

  Future<void> _doFetchRSSItems() async {
    final rssConfig = await getRssSettings();

    List<RSSItem> newRssItems = [];

    for (final feed in rssConfig.feeds) {
      try {
        final fetcher = RSSFetcher();
        final docs = await fetcher.fetch(Uri.parse(feed.url));
        final processor = RSSProcessor(document: docs);
        final items = processor.getItems();
        newRssItems.addAll(items);
        debugPrint("Fetched ${items.length} items from ${feed.url}");
      } on InvalidRSSException catch (e) {
        debugPrint("Invalid RSS: ${e.message}");
      }
    }

    // sort rss items by pubDate
    newRssItems.sort((a, b) =>
        pubDateAsNumber(b.pubDate).compareTo(pubDateAsNumber(a.pubDate)));

    setState(() {
      rssItems = newRssItems;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> rssCards =
        rssItems == null ? [] : rssItems!.map((e) => RSSCard(item: e)).toList();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            // disable the button while refreshing
            onPressed: refreshing ? null : fetchRSSItems,
          ),
        ],
      ),
      body: Center(
          child: Column(children: [
        ...(refreshing ? [const LinearProgressIndicator(value: null)] : []),
        Expanded(
          child: ListView(children: rssCards),
        )
      ])),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Sugoi RSS Viewer',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('Settings'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const SettingsWidget();
                  }));
                }),
          ],
        ),
      ),
    );
  }
}

int pubDateAsNumber(DateTime? pubDate) {
  if (pubDate == null) {
    return 0;
  }
  return pubDate.millisecondsSinceEpoch;
}
