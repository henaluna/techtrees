import 'package:flutter/material.dart';
import 'package:techtrees/invitation.dart';
import 'package:techtrees/resume.dart';
import 'package:techtrees/search.dart';
import 'package:techtrees/searchdetail.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp();
  }
}

class navi extends StatefulWidget {
  navi({Key? key}) : super(key: key);

  @override
  State<navi> createState() => _naviState();
}

class _naviState extends State<navi> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    searchPage(),
    resumePage(),
    invitation(),
    SearchDetailPage(),
  ];

  void _onItemTapped(int index) {
    // 탭을 클릭했을떄 지정한 페이지로 이동
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: 'search',
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label: 'person',
            icon: Icon(Icons.person),
          ),
          BottomNavigationBarItem(
            label: 'invitation',
            icon: Icon(Icons.send),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.lightGreen,
        onTap: _onItemTapped,
      ),
    );
  }

  @override
  void initState() {
    //해당 클래스가 호출되었을떄
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
