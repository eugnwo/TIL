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
                  margin: EdgeInsets.only(left: 20.0),
                  child: Text(
                    '알람',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 38,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20.0),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25),
                    child: Column(
                      children: [
                        Icon(
                          Icons.bed,
                          color: Colors.white,
                        ),
                        Text(
                          '수면 | 기상',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 23,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 330, bottom: 30),
                  decoration: BoxDecoration(
                      color: Color(0xFF1F2123),
                      borderRadius: BorderRadius.circular(45) // 버튼 굴곡 깎기
                      ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 0,
                      horizontal: 0,
                    ),
                    child: TextButton(
                      onPressed: null,
                      child: Text(
                        '설정',
                        style: TextStyle(
                          color: Color(0xFFFF9A00),
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20.0),
                  child: Column(
                    children: [
                      Text(
                        '기타',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(),
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}

```
