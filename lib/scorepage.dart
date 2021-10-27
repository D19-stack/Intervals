import 'package:araliklar3/Be%C5%9Fli.dart';
import 'package:araliklar3/Iki.dart';
import 'package:araliklar3/Uc.dart';
import 'package:araliklar3/alt%C4%B1l%C4%B1lar.dart';
import 'package:araliklar3/main.dart';
import 'package:araliklar3/yedililer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

import 'Tam4.dart';

class ScorePage extends StatefulWidget {
  ScorePage({Key? key}) : super(key: key);

  @override
  _ScorePageState createState() => _ScorePageState();
}

class _ScorePageState extends State<ScorePage> {
  int _currentIndex2 = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "images/HomeImage.png",
            fit: BoxFit.cover,
            height: 2000000,
            width: 2000000,
          ),
          Center(
            child: Card(
              color: Colors.white,
              child: SizedBox(
                width: 1000,
                height: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "İkililer = $sorusayisi/$sorsayisi",
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      "Üçlüler = $sorusayisi2/$sorsayisi2",
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      "Dörtlüler = $sorusayisi3/$sorsayisi3",
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      "Beşliler = $sorusayisi4/$sorsayisi4",
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      "Altılılar = $sorusayisi5/$sorsayisi5 ",
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      "Yedililer = $sorusayisi6/$sorsayisi6 ",
                      style: TextStyle(fontSize: 30),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          onTap: (verilendeger) {
            print(verilendeger);

            _currentIndex2 = verilendeger;
            if (verilendeger == 0) {
              if (defaultTargetPlatform == TargetPlatform.iOS ||
                  defaultTargetPlatform == TargetPlatform.macOS) {
                Navigator.of(context)
                    .push(CupertinoPageRoute(builder: (context) => HomePage()));
              } else if (defaultTargetPlatform == TargetPlatform.android ||
                  defaultTargetPlatform == TargetPlatform.fuchsia ||
                  defaultTargetPlatform == TargetPlatform.linux ||
                  defaultTargetPlatform == TargetPlatform.windows) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => HomePage()));
              }
            }
          },
          items: [
            BottomNavigationBarItem(
              title: Text(
                "Ev",
                style: TextStyle(color: Colors.grey),
              ),
              icon: Icon(
                Icons.home,
                color: Colors.grey,
              ),
            ),
            BottomNavigationBarItem(
              title: Text(
                "Skor",
                style: TextStyle(color: Colors.blue),
              ),
              icon: Icon(
                Icons.sports_score,
                color: Colors.blue,
              ),
            )
          ]),
    );
  }
}
