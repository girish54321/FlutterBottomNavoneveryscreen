
import 'package:bottom_tab_on_every_screen/providerClass/bootmNavIndex.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'mainScreen.dart';

class BottomNav extends StatelessWidget {
  final int selectedIntext;
  final Function onItemTapped;
  final bool isMainScreen;

  const BottomNav(
      {Key key, this.selectedIntext, this.onItemTapped, this.isMainScreen})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final indexNumber = Provider.of<BottomNavIndex>(context);
    return Consumer<BottomNavIndex>(builder: (context, notifier, child) {
      return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            title: Text('Shop'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text('Cart'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('Settings'),
          ),
        ],
        currentIndex: indexNumber.getIndex(),
        selectedItemColor: Theme.of(context).accentColor,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        onTap: (index) {
          if (isMainScreen) {
            notifier.changIndex(index);
          } else {
//            Navigator.pop(context);
            notifier.changIndex(index);
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => MainSceen()),
                (Route<dynamic> route) => false);
          }
        },
      );
    });
  }
}
