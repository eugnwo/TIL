```Dart
import 'package:flutter/material.dart';

class homescreen extends StatelessWidget {
  const homescreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF181818), // 바탕화면 색깔
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children:[
                        Text('Hey, Selena',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w800,
                          ),),
                        Text('Welcome back',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 18,
                            )
                        ),
                      ],)
                  ],
                ),
                SizedBox(
                  height: 120,
                ),
                Text('Total Balance',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white.withOpacity(0.8), // 명암
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text('\$5 194 482',
                    style: TextStyle(
                      fontSize: 44,
                      fontWeight: FontWeight.w600, // 글자 두께
                      color: Colors.white,
                    ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Button(text: 'Transfer', bgColor: Colors.amber, textColor: Colors.black),
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF1F2123),
                          borderRadius: BorderRadius.circular(45) // 버튼 굴곡 깎기
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: 50,
                        ),
                        child: Text('Request',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
        )
      ),
    );
  }
}
```
