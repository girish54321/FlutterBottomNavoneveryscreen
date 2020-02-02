import 'package:bottom_tab_on_every_screen/providerClass/bootmNavIndex.dart';
import 'package:double_back_to_close_app/double_back_to_close_app.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'allScreens.dart';
import 'bottomnavigationBar.dart';

class MainSceen extends StatefulWidget {
  @override
  _MainSceenState createState() => _MainSceenState();
}

class _MainSceenState extends State<MainSceen> {
  List<Widget> _widgetOptions = <Widget>[
    Home(),
    Shop(),
    Cart(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    final indexNumber = Provider.of<BottomNavIndex>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Screen"),
      ),
      body: DoubleBackToCloseApp(
        snackBar: const SnackBar(
          key: ValueKey('snack_bar'),
          content: Text('Tap back again to leave'),
        ),
        child: _widgetOptions[indexNumber.getIndex()],
      ),
      bottomNavigationBar: BottomNav(
        onItemTapped: () {},
        selectedIntext: indexNumber.getIndex(),
        isMainScreen: true,
      ),
    );
  }
}
