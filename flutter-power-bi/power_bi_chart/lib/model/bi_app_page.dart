import 'package:flutter/material.dart';
import 'package:power_bi_chart/model/bi_notification_page.dart';
import 'package:power_bi_chart/bottom_bar.dart';
import 'package:power_bi_chart/theme/bi_theme.dart' as Theme;

class BiAppPage extends StatefulWidget {
  @override
  BiAppPageState createState() => BiAppPageState();
}

class BiAppPageState extends State<BiAppPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.Colors.bgColor,
        appBar: AppBar(
          title: Text('Apps'),
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
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/images/application.png'),
              Padding(
                padding: EdgeInsets.all(10.0),
              ),
              Text(
                'Your apps will be here',
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
                    'Browse your collection of related dashboards and reports \n packaged and published together into apps .\n',
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
        )));
  }
}
