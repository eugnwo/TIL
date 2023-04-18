import 'package:flutter/material.dart';

class worldtimeApp extends StatelessWidget {
  const worldtimeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xFF181818),
          elevation: 0.0,
          leading: TextButton(
            onPressed: null,
            child: Text(
              '편집',
              style: TextStyle(
                color: Color(0xFFFF9A00),
                fontSize: 20,
              ),
            ),
          ),
          actions: [
            IconButton(
              onPressed: null,
              icon: Icon(
                Icons.add,
                color: Color(0xFFFF9A00),
                size: 28,
              ),
            ),
          ]),
      backgroundColor: Color(0xFF181818),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 11.0),
              child: Text(
                '세계 시계',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 33,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
