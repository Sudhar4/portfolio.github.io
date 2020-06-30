import 'package:flutter/material.dart';
import 'package:portfolio_app/tabs/about_tab.dart';
import 'package:portfolio_app/screens/screens.dart';
import 'package:portfolio_app/tabs/more.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selected_index = 0;
  List<Widget> _items = [
    AboutTab(),
    //Text('hi'),
    Screens(),
    //Text('how'),
    More(),
  ];
  void ontap(int index) {
    setState(() {
      selected_index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _items.elementAt(selected_index),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('About'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.developer_mode),
            title: Text('Projects'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_mail),
            title: Text('Contact'),
          ),
        ],
        currentIndex: selected_index,
        onTap: ontap,
        selectedItemColor: Theme.of(context).accentColor,
        backgroundColor: Color(0xFF1C1C1F),
        elevation: 15.0,
        unselectedItemColor: Colors.grey,

        //fixedColor: Colors.white,
      ),
      //backgroundColor: ,
    );
  }
}
