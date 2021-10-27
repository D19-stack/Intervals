import 'package:araliklar3/QuizBrains/quizbrain6.dart';
import 'package:araliklar3/scorepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'main.dart';

dynamic sorusayisi6 = 0;
dynamic sorsayisi6 = 0;

class Yedililer extends StatefulWidget {
  Yedililer({Key? key}) : super(key: key);

  @override
  _YedililerState createState() => _YedililerState();
}

class _YedililerState extends State<Yedililer> {
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
                  'Your Score=$sorusayisi6/$sorsayisi6 ',
                  style: TextStyle(color: Colors.black, fontSize: 30),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    sorusayisi6 = 0;
                    sorsayisi6 = 0;
                  },
                  child: Text('Reset Score')),
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
        body: ListView.builder(
          itemBuilder: (context, index) {
            if (index != a.length) {
              return SoruOlustur6();
            } else {
              return Center(
                  child: SizedBox(
                height: 100,
                width: 400,
                child: Center(
                  child: Text(
                    "Yedililer Bitti !!!",
                    style: Theme.of(context).textTheme.headline3,
                  ),
                ),
              ));
            }
          },
          itemCount: a.length + 1,
        ));
  }
}

class _MakeQuestion {
  String Question;
  var trueanswer;
  // ignore: prefer_typing_uninitialized_variables
  var falseanswer;

  _MakeQuestion(this.Question, trueanswer, falseanswer) {
    if (trueanswer == true) {
      this.trueanswer = 'Dogru';
    }
    if (falseanswer == true) {
      this.falseanswer = 'Dogru';
    }
    if (trueanswer == false) {
      this.trueanswer = 'Yanlis';
    }
    if (falseanswer == false) {
      this.falseanswer = 'Yanlis';
    }
  }
}
