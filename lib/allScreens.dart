import 'package:flutter/material.dart';

import 'bottomnavigationBar.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Text('Open route'),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => YourScreenInStack()),
          );
        },
      ),
    );
  }
}

class Shop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Shop"),
    );
  }
}

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Cart"),
    );
  }
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Profile"),
    );
  }
}

class YourScreenInStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Screen In Stack"),
      ),
      body: Center(
        child: Text("Hii"),
      ),
      bottomNavigationBar: BottomNav(
        onItemTapped: () {},
//        selectedIntext: indexNumber.getIndex(),  NO NEED TO PASS INDEX JUST IF YOUR WANT YOU CAN
        selectedIntext: 0,
        isMainScreen:
            false, // SET THIS TO FALSE IF THIS IS NOT YOUR MAN SCREEN THIS WAY APP WILL CLOSE THE OLD ROUTE
      ),
    );
  }
}
