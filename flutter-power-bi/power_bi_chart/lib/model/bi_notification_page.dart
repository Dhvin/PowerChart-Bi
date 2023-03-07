import 'package:flutter/material.dart';
import 'package:power_bi_chart/bottom_bar.dart';
import 'package:power_bi_chart/theme/bi_theme.dart' as Theme;

class BiNotificationPage extends StatefulWidget {
  @override
  BiNotificationPageState createState() => BiNotificationPageState();
}

class BiNotificationPageState extends State<BiNotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.Colors.bgColor,
        appBar: AppBar(
          title: Text('Notifications'),
          backgroundColor: Theme.Colors.primaryColor,
        ),
        bottomNavigationBar: CustomBottomNavigationBar(),
        body: Center(
            child: Container(
          height: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/images/notification.png'),
              Padding(
                padding: EdgeInsets.all(10.0),
              ),
              Text(
                'Your notification will be here',
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
                    'View your data alerts and important push notifications \n for your content here.\n',
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
