import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:power_bi_chart/model/bi_app_page.dart';
import 'package:power_bi_chart/model/bi_reports.dart';
import 'package:power_bi_chart/model/bi_dashboards.dart';
import 'package:power_bi_chart/model/bi_favorites.dart';
import 'package:power_bi_chart/homepage.dart';

import 'package:power_bi_chart/theme/bi_theme.dart' as FingressTheme;

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({Key key, this.optionsPage})
      : super(key: key);

  // final ValueChanged<FingressAppOptions> onOptionsChanged;
  final Widget optionsPage;
  @override
  CustomBottomNavigationBarState createState() =>
      CustomBottomNavigationBarState();
}

class CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _currentIndex = 0;

  var uuid = "651d1178-ca2c-4453-960e-c7eea5f31cfb";

  void _handleBottomNavigationTab(int index) {
    _currentIndex = index;
    print('current index is::::' + _currentIndex.toString());

    /*  if (index == 0) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => DesignCourseHomeScreen()),
      );
    } else if (index == 1) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => DesignLeaseHomeScreen()));
    } else if (index == 2) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => BookingCars(null, null)));
    } else if (index == 3) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => FingressChatBot()));
    } else if (index == 4) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => MoreScreen()));
    }*/

    if (index == 0) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    } else if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => BiFavoritePage()),
      );
    } else if (index == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => BiAppPage()),
      );
    } else if (index == 3) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => DashBoardPage()),
      );
    } else if (index == 4) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => BiRetailReports()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: Theme.of(context).copyWith(
            primaryColor: Color(0xFFfbab66),
            // canvasColor: Color(0xFFf7418c),
            //canvasColor:Color(0xFFfbab66),
            textTheme: Theme.of(context).textTheme.copyWith(
                caption: TextStyle(color: FingressTheme.Colors.darkGreyColor))),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          selectedItemColor: FingressTheme.Colors.primaryColor,
          unselectedItemColor: Colors.black,
          onTap:
              _handleBottomNavigationTab, // this will be set when a  tab is tapped
          items: [
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.home),
              // ignore: deprecated_member_use
              title: Text('Home'),

              //  title: Text(AppLocalizations.of(context).myFile) //'My Files'),
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.star),
              // ignore: deprecated_member_use
              title: Text('Favorites'),
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.dashcube),
              // ignore: deprecated_member_use
              title: Text('Apps'),
              // ignore: deprecated_member_use
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.streetView),
              // ignore: deprecated_member_use
              title: Text('Dashboards'),
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.fileImage),
              // ignore: deprecated_member_use
              title: Text('Reports'),
            ),
          ],
        ));
  }
}
