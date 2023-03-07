import 'package:flutter/material.dart';
import 'package:power_bi_chart/model/bi_notification_page.dart';
import 'package:power_bi_chart/bottom_bar.dart';
import 'package:power_bi_chart/theme/bi_theme.dart' as Theme;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

TabController controller;

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    controller = new TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.Colors.bgColor,
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Theme.Colors.primaryColor,
        actions: [
          IconButton(
              icon: Icon(
                Icons.notifications,
                color: Theme.Colors.bgColor,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BiNotificationPage()));
              }),
          IconButton(
              icon: Icon(
                Icons.search,
                color: Theme.Colors.bgColor,
              ),
              onPressed: null)
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
      body: Center(
          child: Container(
              height: double.infinity,
              child: Column(children: <Widget>[
                DefaultTabController(
                  length: 2,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            color: Theme.Colors.primaryColor,
                            child: TabBar(
                              indicatorWeight: 5.0,
                              labelStyle: TextStyle(fontSize: 14.0),
                              indicatorColor: Theme.Colors.backgroundColor,
                              unselectedLabelColor: Colors.white,
                              labelColor: Colors.white,
                              tabs: [
                                Tab(text: 'QUICK ACCESS'),
                                Tab(text: 'ACTIVITY'),
                              ],
                              controller: controller,
                            )),
                        Container(
                            color: Colors.white,
                            padding: EdgeInsets.all(10.0),
                            height: 600,
                            child: TabBarView(
                                controller: controller,
                                children: <Widget>[
                                  ListView(children: [buildQuickAccess()]),
                                  ListView(children: [buildActivity()]),
                                ]))
                      ]),
                )
              ]))),
    );
  }

  buildQuickAccess() {
    return Container(
      child: Center(
          child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 100.0),
          ),
          Image.asset('assets/images/homepage.png'),
          Padding(
            padding: EdgeInsets.all(10.0),
          ),
          Text(
            'Your key content will be here',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(10.0),
              ),
              Text(
                'Find your most frequently viewed reports,dashboards \n and apps here.\n',
                style: TextStyle(
                  fontSize: 14,
                ),
                softWrap: true,
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
            ],
          )
        ],
      )),
    );
  }

  buildActivity() {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 100.0),
          ),
          Image.asset('assets/images/activities.png'),
          Padding(
            padding: EdgeInsets.all(10.0),
          ),
          Text(
            'Your activity feed will be here',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(10.0),
              ),
              Text(
                'See everything happening in your dashboards and \n reports stay up-to-date with the latest activities.\n',
                style: TextStyle(
                  fontSize: 14,
                ),
                softWrap: true,
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
            ],
          )
        ],
      ),
    );
  }
}
