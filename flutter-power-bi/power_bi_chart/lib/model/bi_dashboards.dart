import 'package:flutter/material.dart';
import 'package:power_bi_chart/model/bi_chart_parser.dart';
import 'package:power_bi_chart/model/bi_notification_page.dart';
import 'package:power_bi_chart/bottom_bar.dart';
import 'package:power_bi_chart/model/bi_data_power.dart';
import 'package:power_bi_chart/theme/bi_theme.dart' as Theme;

class DashBoardPage extends StatefulWidget {
  @override
  _DashBoardPageState createState() => _DashBoardPageState();
}

TabController controller;

class _DashBoardPageState extends State<DashBoardPage>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    controller = new TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.Colors.backgroundColor,
      appBar: AppBar(
        title: Text('Samples'),
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
      body: SingleChildScrollView(
          child: Container(
        margin: EdgeInsets.all(15.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            Row(
              children: [
                Text(
                  'Power BI Sample (6)',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            buildSales(context),
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            buildDOO(context),
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            buildCustomerCare(context),
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            buildDOM(context),
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            buildCFO(context),
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            buildHRManager(context),
            Padding(
              padding: EdgeInsets.only(top: 25.0, left: 10.0),
            ),
            Row(
              children: [
                Text('Report Server Sample (2)',
                    style: TextStyle(color: Colors.grey)),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 25.0, left: 10.0),
            ),
            buildRetailRep(context),
            Padding(
              padding: EdgeInsets.only(top: 25.0, left: 10.0),
            ),
            buildSalesRep(context)
          ],
        ),
      )),
    );
  }

  Row buildRetailRep(BuildContext context) {
    return Row(
      children: [
        RawMaterialButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PowerBiPage()),
            );
          },
          elevation: 1.0,
          fillColor: Theme.Colors.primaryColor,
          padding: EdgeInsets.all(15.0),
          shape: CircleBorder(),
          child: Icon(
            Icons.file_present,
            size: 25.0,
            color: Theme.Colors.backgroundColor,
          ),
        ),
        Text('Retail Report')
      ],
    );
  }

  Row buildSalesRep(BuildContext context) {
    return Row(
      children: [
        RawMaterialButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PowerBiPage()),
            );
          },
          elevation: 1.0,
          fillColor: Theme.Colors.primaryColor,
          padding: EdgeInsets.all(15.0),
          shape: CircleBorder(),
          child: Icon(
            Icons.point_of_sale,
            size: 25.0,
            color: Theme.Colors.backgroundColor,
          ),
        ),
        Text('Sales Report')
      ],
    );
  }

  Row buildSales(BuildContext context) {
    return Row(
      children: [
        RawMaterialButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PowerBiPage()),
            );
          },
          elevation: 1.0,
          fillColor: Theme.Colors.primaryColor,
          padding: EdgeInsets.all(15.0),
          shape: CircleBorder(),
          child: Icon(
            Icons.shopping_bag,
            size: 25.0,
            color: Theme.Colors.backgroundColor,
          ),
        ),
        Text('Fingress Sales')
      ],
    );
  }

  Row buildDOO(BuildContext context) {
    return Row(
      children: [
        RawMaterialButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PowerBiParserPage()),
            );
          },
          elevation: 1.0,
          fillColor: Theme.Colors.primaryColor,
          padding: EdgeInsets.all(15.0),
          shape: CircleBorder(),
          child: Icon(
            Icons.bar_chart,
            size: 25.0,
            color: Theme.Colors.backgroundColor,
          ),
        ),
        Text('Director of Operations')
      ],
    );
  }

  Row buildCustomerCare(BuildContext context) {
    return Row(
      children: [
        RawMaterialButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PowerBiPage()),
            );
          },
          elevation: 1.0,
          fillColor: Theme.Colors.primaryColor,
          padding: EdgeInsets.all(15.0),
          shape: CircleBorder(),
          child: Icon(
            Icons.child_care,
            size: 25.0,
            color: Theme.Colors.backgroundColor,
          ),
        ),
        Text('Customer Care')
      ],
    );
  }

  Row buildDOM(BuildContext context) {
    return Row(
      children: [
        RawMaterialButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PowerBiPage()),
            );
          },
          elevation: 1.0,
          fillColor: Theme.Colors.primaryColor,
          padding: EdgeInsets.all(15.0),
          shape: CircleBorder(),
          child: Icon(
            Icons.graphic_eq_sharp,
            size: 25.0,
            color: Theme.Colors.backgroundColor,
          ),
        ),
        Text('Director of Marketing')
      ],
    );
  }

  Row buildCFO(BuildContext context) {
    return Row(
      children: [
        RawMaterialButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PowerBiPage()),
            );
          },
          elevation: 1.0,
          fillColor: Theme.Colors.primaryColor,
          padding: EdgeInsets.all(15.0),
          shape: CircleBorder(),
          child: Icon(
            Icons.shop_two,
            size: 25.0,
            color: Theme.Colors.backgroundColor,
          ),
        ),
        Text('CFO')
      ],
    );
  }

  Row buildHRManager(BuildContext context) {
    return Row(
      children: [
        RawMaterialButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PowerBiPage()),
            );
          },
          elevation: 1.0,
          fillColor: Theme.Colors.primaryColor,
          padding: EdgeInsets.all(15.0),
          shape: CircleBorder(),
          child: Icon(
            Icons.supervised_user_circle,
            size: 25.0,
            color: Theme.Colors.backgroundColor,
          ),
        ),
        Text('HR Manager')
      ],
    );
  }
}
