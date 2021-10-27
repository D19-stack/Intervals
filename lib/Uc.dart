import 'package:araliklar3/QuizBrains/QuizBrain2.dart';
import 'package:araliklar3/scorepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'QuizBrains/QuizBrain.dart';
import 'main.dart';

dynamic sorusayisi2 = 0;
dynamic sorsayisi2 = 0;

class Uc extends StatefulWidget {
  Uc({Key? key}) : super(key: key);

  @override
  _UcState createState() => _UcState();
}

class _UcState extends State<Uc> {
  int _currentIndex2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey,
            onTap: (verilendeger) {
              print(verilendeger);

              _currentIndex2 = verilendeger;
              if (verilendeger == 1) {
                if (defaultTargetPlatform == TargetPlatform.iOS ||
                    defaultTargetPlatform == TargetPlatform.macOS) {
                  Navigator.of(context).push(
                      CupertinoPageRoute(builder: (context) => ScorePage()));
                } else if (defaultTargetPlatform == TargetPlatform.android ||
                    defaultTargetPlatform == TargetPlatform.fuchsia ||
                    defaultTargetPlatform == TargetPlatform.linux ||
                    defaultTargetPlatform == TargetPlatform.windows) {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ScorePage()));
                }
              } else {
                if (defaultTargetPlatform == TargetPlatform.iOS ||
                    defaultTargetPlatform == TargetPlatform.macOS) {
                  Navigator.of(context).push(
                      CupertinoPageRoute(builder: (context) => HomePage()));
                } else if (defaultTargetPlatform == TargetPlatform.android ||
                    defaultTargetPlatform == TargetPlatform.fuchsia ||
                    defaultTargetPlatform == TargetPlatform.linux ||
                    defaultTargetPlatform == TargetPlatform.windows) {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => HomePage()));
                }
              }
            },
            items: [
              BottomNavigationBarItem(
                title: Text(
                  "Ev",
                  style: TextStyle(color: Colors.blue),
                ),
                icon: Icon(
                  Icons.home,
                  color: Colors.blue,
                ),
              ),
              BottomNavigationBarItem(
                title: Text(
                  "Skor",
                  style: TextStyle(color: Colors.grey),
                ),
                icon: Icon(
                  Icons.sports_score,
                  color: Colors.grey,
                ),
              )
            ]),
        onDrawerChanged: (context2) {
          setState(() {
            build(context);
          });
        },
        drawer: Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Center(
                child: Text(
                  'Skor=$sorusayisi2/$sorsayisi2 ',
                  style: TextStyle(color: Colors.black, fontSize: 30),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    sorusayisi2 = 0;
                    sorsayisi2 = 0;
                  },
                  child: Text('Skoru Sıfırla')),
              Text(
                '        Dogac Evcin\nIntervals App',
                style: TextStyle(color: Colors.grey.shade600),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.white.withOpacity(0.7),
          foregroundColor: Colors.black,
        ),
        body: Stack(children: [
          ListView.builder(
            itemBuilder: (context, index) {
              if (index != a3.length) {
                return SoruOlustur2();
              } else {
                return Center(
                    child: SizedBox(
                  height: 100,
                  width: 400,
                  child: Center(
                    child: Text(
                      "Üçlüler Bitti !!!",
                      style: Theme.of(context).textTheme.headline3,
                    ),
                  ),
                ));
              }
            },
            itemCount: a3.length + 1,
          ),
        ]));
  }
}
