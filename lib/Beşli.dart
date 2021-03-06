import 'package:araliklar3/scorepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'QuizBrains/QuizBrain4.dart';
import 'main.dart';

dynamic sorusayisi4 = 0;
dynamic sorsayisi4 = 0;

class Besli extends StatefulWidget {
  Besli({Key? key}) : super(key: key);

  @override
  _BesliState createState() => _BesliState();
}

int _currentIndex2 = 0;

class _BesliState extends State<Besli> {
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
                  'Skor=$sorusayisi4/$sorsayisi4 ',
                  style: TextStyle(color: Colors.black, fontSize: 30),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    sorusayisi4 = 0;
                    sorsayisi4 = 0;
                  },
                  child: Text('Skoru S??f??rla')),
              Text(
                '        Do??a?? Evcin\nAral??klar Uygulamas??',
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
              return SoruOlustur4();
            } else {
              return Center(
                  child: SizedBox(
                height: 100,
                width: 400,
                child: Center(
                  child: Text(
                    "Be??liler Bitti !!!",
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
  var falseanswer;

  _MakeQuestion(this.Question, trueanswer, falseanswer) {
    if (trueanswer == true) {
      this.trueanswer = 'Do??ru';
    }
    if (falseanswer == true) {
      this.falseanswer = 'Do??ru';
    }
    if (trueanswer == false) {
      this.trueanswer = 'Yanl????';
    }
    if (falseanswer == false) {
      this.falseanswer = 'Yanl????';
    }
  }
}
