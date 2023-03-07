import 'package:flutter/material.dart';
import 'package:power_bi_chart/model/bi_notification_page.dart';
import 'package:power_bi_chart/bottom_bar.dart';
import 'package:power_bi_chart/theme/bi_theme.dart' as Theme;

class BiFavoritePage extends StatefulWidget {
  @override
  BiBiFavoritePageState createState() => BiBiFavoritePageState();
}

class BiBiFavoritePageState extends State<BiFavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.Colors.bgColor,
        appBar: AppBar(
          title: Text('Favorites'),
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
              Image.asset('assets/images/favorite.png'),
              Padding(
                padding: EdgeInsets.all(10.0),
              ),
              Text(
                'Your favorites will be here',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(25.0),
                  ),
                  Text(
                    'Favorite any of your content to find it quickly here.',
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
