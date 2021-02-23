import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:webbrowser/screean/amazon.dart';
import 'package:webbrowser/screean/github.dart';
import 'package:webbrowser/screean/google.dart';
import 'package:webbrowser/screean/youtube.dart';

class myTabs extends StatefulWidget {
  @override
  _myTabsState createState() => _myTabsState();
}

class _myTabsState extends State<myTabs> with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 50,
        child: TabBar(
          controller: tabController,
          unselectedLabelColor: Colors.grey,
          labelColor: Colors.blue,
          labelStyle: TextStyle(fontSize: 9, fontWeight: FontWeight.bold),
          tabs: <Tab>[
            Tab(
              icon: Icon(FontAwesomeIcons.google),
              text: "Google",
            ),
            Tab(
              icon: Icon(FontAwesomeIcons.amazon),
              text: "Amazon",
            ),
            Tab(
              icon: Icon(FontAwesomeIcons.youtube),
              text: "YouTube",
            ),
            Tab(
              icon: Icon(FontAwesomeIcons.github),
              text: "GitHub",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: <Widget>[
          GoogleScreen(),
          AmazonScreen(),
          YouTubeScreen(),
          GitHubScreen()
        ],
      ),
    );
  }
}
