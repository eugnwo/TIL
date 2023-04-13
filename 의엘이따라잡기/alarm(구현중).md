```Dart
import 'package:flutter/material.dart';

class homescreen extends StatelessWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF181818),
          elevation: 0.0,
          leading: TextButton(
            onPressed: null,
            child: Text('편집',
              style: TextStyle(
                color: Color (0xFFFF9A00),
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
          ]
        ),
        backgroundColor: Color(0xFF181818),
        body: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 21.0),
                child: Text('알람',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 38,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
```
