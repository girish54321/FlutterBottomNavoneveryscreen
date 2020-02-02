import 'package:bottom_tab_on_every_screen/providerClass/bootmNavIndex.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'mainScreen.dart';

void main() => runApp(
  MultiProvider(
    providers: [
      ChangeNotifierProvider(builder: (context) => BottomNavIndex(0)),
    ],
    child: MyApp(),
  ),
);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom Nav Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainSceen(),
    );
  }
}
