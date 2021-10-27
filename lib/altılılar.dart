import 'package:araliklar3/scorepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'main.dart';
import 'QuizBrains/quizbrain5.dart';

dynamic sorusayisi5 = 0;
dynamic sorsayisi5 = 0;

class Altililar extends StatefulWidget {
  Altililar({Key? key}) : super(key: key);

  @override
  _AltililarState createState() => _AltililarState();
}

int _currentIndex2 = 0;

class _AltililarState extends State<Altililar> {
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
                  'Skor=$sorusayisi5/$sorsayisi5 ',
                  style: TextStyle(color: Colors.black, fontSize: 30),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    sorusayisi5 = 0;
                    sorsayisi5 = 0;
                  },
                  child: Text('Skoru Sıfırla')),
              Text(
                '        Doğaç Evcin\nAralıklar Uygulaması',
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
              return SoruOlustur5();
            } else {
              return Center(
                  child: SizedBox(
                height: 100,
                width: 400,
                child: Center(
                  child: Text(
                    "Altılılar Bitti !!!",
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
      this.trueanswer = 'Doğru';
    }
    if (falseanswer == true) {
      this.falseanswer = 'Doğru';
    }
    if (trueanswer == false) {
      this.trueanswer = 'Yanlış';
    }
    if (falseanswer == false) {
      this.falseanswer = 'Yanlış';
    }
  }
}
