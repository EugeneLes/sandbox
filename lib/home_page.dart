import 'package:flutter/material.dart';
import 'package:sandbox/favorites/view/page/favorites_page.dart';
import 'package:sandbox/news/view/page/sources_page.dart';
import 'package:sandbox/qualtrics/view/page/qualtrics_page.dart';
import 'package:sandbox/traffic_light/view/page/traffic_light_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late final tabs = ['Qualtrics', 'Traffic Light', 'News', 'Favorites'];
  late final _tabController = TabController(length: tabs.length, vsync: this);
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        title: const Text('News Client'),
        bottom: TabBar(
          indicatorSize: TabBarIndicatorSize.tab,
          controller: _tabController,
          tabs: tabs.map((label) => Tab(text: label)).toList(),
        ),
      ),
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _tabController,
        children: const [
          QualtricsPage(),
          TrafficLightPage(),
          SourcesPage(),
          FavoritesPage(),
        ],
      ),
    );
  }
}
