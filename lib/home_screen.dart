import 'package:catchandroid/sub/alarmPage.dart';
import 'package:catchandroid/sub/stopwatchPage.dart';
import 'package:catchandroid/sub/worldtimePage.dart';
import 'package:catchandroid/sub/timerPage.dart';
import 'package:flutter/material.dart';

class homescreen extends StatefulWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  int _selectIndex = 0;

  final List _widgetOptions = [
    const worldtimeApp(),
    const AlarmApp(),
    const stopwatchApp(),
    const timerApp(),
  ];

  void _onItemTaped(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF181818),
        body: SafeArea(child: _widgetOptions.elementAt(_selectIndex)),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xFF181818),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.public), label: '세계 시계'),
            BottomNavigationBarItem(
                icon: Icon(Icons.access_alarm_rounded), label: '알람'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shutter_speed), label: '스톱워치'),
            BottomNavigationBarItem(
                icon: Icon(Icons.timer), label: '타이머'),
          ],
          currentIndex: _selectIndex,
          onTap: _onItemTaped,
          iconSize: 29,
          selectedItemColor: Color(0xFFFF9A00),
          selectedLabelStyle:
              TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 16
              ),
          unselectedFontSize: 16,
          unselectedItemColor: Colors.grey,
        ),
      ),
    );
  }
}
