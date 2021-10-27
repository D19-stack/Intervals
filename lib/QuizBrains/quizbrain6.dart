import 'dart:math';

import 'package:araliklar3/yedililer.dart';

import 'package:flutter/material.dart';

import '../main.dart';

bool tiklandimi = false;

class SoruOlustur6 extends StatefulWidget {
  SoruOlustur6({Key? key}) : super(key: key);

  @override
  _SoruOlustur6State createState() => _SoruOlustur6State();
}

class _SoruOlustur6State extends State<SoruOlustur6> {
  _MakeQuestion soru = a[Random().nextInt(a.length)];

  _SoruOlustur6State();

  Color arengi = Colors.white;
  Color brengi = Colors.white;
  bool tiklandimi = false;
  @override
  Widget build(BuildContext context) {
    return ListBody(children: [
      Card(
        color: Colors.white,
        borderOnForeground: true,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12), side: BorderSide.none),
        child: ListBody(
          children: [
            Divider(
              thickness: 20,
              color: Colors.white,
            ),
            Center(
                child: Text(
              soru.Question,
              style: TextStyle(fontSize: 40, color: Colors.black),
            )),
            Divider(thickness: 30, color: Colors.white.withAlpha(0)),
            Divider(thickness: 30, color: Colors.white.withAlpha(0)),
            Divider(thickness: 30, color: Colors.white.withAlpha(0)),
            Divider(thickness: 30, color: Colors.white.withAlpha(0)),
            Divider(thickness: 30, color: Colors.white.withAlpha(0)),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              child: ElevatedButton(
                  child: Text(
                    soru.trueanswer.toString() == 'Doğru'
                        ? soru.trueanswer.toString()
                        : soru.falseanswer.toString(),
                    style: TextStyle(fontSize: 45, color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(primary: arengi),
                  onPressed: () {
                    if (tiklandimi == false && soru.trueanswer == 'Doğru') {
                      sorusayisi6++;
                      sorsayisi6++;
                      tiklandimi = true;
                      brengi = Colors.white;
                      arengi = Colors.green;
                      a.remove(soru);
                    } else if (tiklandimi == false &&
                        soru.falseanswer == 'Doğru') {
                      tiklandimi = true;
                      sorusayisi6++;
                      brengi = Colors.white;
                      arengi = Colors.red;
                    }

                    setState(() {
                      build(context);
                    });
                  }),
            ),
            Divider(thickness: 15, color: Colors.white.withAlpha(0)),
            Divider(thickness: 15, color: Colors.white.withAlpha(0)),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              child: ElevatedButton(
                child: Text(
                  soru.trueanswer.toString() == 'Yanlış'
                      ? soru.trueanswer.toString()
                      : soru.falseanswer.toString(),
                  style: TextStyle(fontSize: 45, color: Colors.black),
                ),
                style: ElevatedButton.styleFrom(primary: brengi),
                onPressed: () {
                  if (tiklandimi == false && soru.trueanswer == 'Yanlış') {
                    sorusayisi6++;
                    sorsayisi6++;
                    tiklandimi = true;
                    arengi = Colors.white;
                    brengi = Colors.green;
                    a.remove(soru);
                  } else if (tiklandimi == false &&
                      soru.falseanswer == 'Yanlış') {
                    tiklandimi = true;
                    sorusayisi6++;
                    arengi = Colors.white;
                    brengi = Colors.red;
                  }
                  setState(() {
                    build(context);
                  });
                },
              ),
            ),
          ],
        ),
      ),
      Divider(
        thickness: 20,
        color: Colors.white,
      ),
      Divider(
        thickness: 15,
        color: Colors.white,
      ),
      Divider(thickness: 10, color: Colors.black),
      Divider(
        thickness: 15,
        color: Colors.white,
      ),
      Divider(
        thickness: 20,
        color: Colors.white,
      )
    ]);
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

List a = [
  _MakeQuestion("Sib\n\nDo\n\nK7", true, false),
  _MakeQuestion("Si\n\nDo\n\nK7", false, true),
  _MakeQuestion("Si\n\nDo#\n\nK7", true, false),
  _MakeQuestion("Si#\n\nDo#\n\nK7", false, true),
  _MakeQuestion("Do\n\nRe\n\nK7", true, false),
  _MakeQuestion("Do#\n\nRe\n\nK7", false, true),
  _MakeQuestion("Do#\n\nRe#\n\nK7", true, false),
  _MakeQuestion("Do\n\nRe#\n\nK7", false, true),
  _MakeQuestion("Re\n\nMi\n\nK7", true, false),
  _MakeQuestion("Re#\n\nMi\n\nK7", false, true),
  _MakeQuestion("Mib\n\nFa\n\nK7", true, false),
  _MakeQuestion("Mi\n\nFa\n\nK7", false, true),
  _MakeQuestion("Mi\n\nFa#\n\nK7", true, false),
  _MakeQuestion("Mi#\n\nFa#\n\nK7", false, true),
  _MakeQuestion("Fa\n\nSol\n\nK7", true, false),
  _MakeQuestion("Fa#\n\nSol\n\nK7", false, true),
  _MakeQuestion("Fa#\n\nSol#\n\nK7", true, false),
  _MakeQuestion("Fa\n\nSol#\n\nK7", false, true),
  _MakeQuestion("Sol\n\nLa\n\nK7", true, false),
  _MakeQuestion("Sol#\n\nLa\n\nK7", false, true),
  _MakeQuestion("Sol#\n\nLa#\n\nK7", true, false),
  _MakeQuestion("Sol\n\nLa#\n\nK7", false, true),
  _MakeQuestion("La\n\nSi\n\nK7", true, false),
  _MakeQuestion("Lab\n\nSi\n\nK7", false, true),
  _MakeQuestion("Lab\n\nSib\n\nK7", true, false),
  _MakeQuestion("La\n\nSib\n\nK7", false, true),
  _MakeQuestion("Solb\n\nLab\n\nK7", true, false),
  _MakeQuestion("Sol\n\nLab\n\nK7", false, true),
  _MakeQuestion("Fab\n\nSolb\n\nK7", true, false),
  _MakeQuestion("Fa\n\nSolb\n\nK7", false, true),
  _MakeQuestion("Reb\n\nMib\n\nK7", true, false),
  _MakeQuestion("Re\n\nMib\n\nK7", false, true),
  _MakeQuestion("Dob\n\nReb\n\nK7", true, false),
  _MakeQuestion("Do\n\nReb\n\nK7", false, true),
  _MakeQuestion("Si\n\nDo\n\nB7", true, false),
  _MakeQuestion("Sib\n\nDo\n\nB7", false, true),
  _MakeQuestion("Si#\n\nDo#\n\nB7", true, false),
  _MakeQuestion("Si\n\nDo#\n\nB7", false, true),
  _MakeQuestion("Do#\n\nRe\n\nB7", true, false),
  _MakeQuestion("Do\n\nRe\n\nB7", false, true),
  _MakeQuestion("Dox\n\nRe#\n\nB7", true, false),
  _MakeQuestion("Do#\n\nRe#\n\nB7", false, true),
  _MakeQuestion("Re#\n\nMi\n\nB7", true, false),
  _MakeQuestion("Re\n\nMi\n\nB7", false, true),
  _MakeQuestion("Mi\n\nFa\n\nB7", true, false),
  _MakeQuestion("Mi#\n\nFa\n\nB7", false, true),
  _MakeQuestion("Mi#\n\nFa#\n\nB7", true, false),
  _MakeQuestion("Mi\n\nFa#\n\nB7", false, true),
  _MakeQuestion("Fa#\n\nSol\n\nB7", true, false),
  _MakeQuestion("Fa\n\nSol\n\nB7", false, true),
  _MakeQuestion("Fax\n\nSol#\n\nB7", true, false),
  _MakeQuestion("Fa#\n\nSol#\n\nB7", false, true),
  _MakeQuestion("Sol#\n\nLa\n\nB7", true, false),
  _MakeQuestion("Sol\n\nLa\n\nB7", false, true),
  _MakeQuestion("Solx\n\nLa#\n\nB7", true, false),
  _MakeQuestion("Sol#\n\nLa#\n\nB7", false, true),
  _MakeQuestion("La#\n\nSi\n\nB7", true, false),
  _MakeQuestion("La\n\nSi\n\nB7", false, true),
  _MakeQuestion("La\n\nSib\n\nB7", true, false),
  _MakeQuestion("Lab\n\nSib\n\nB7", false, true),
  _MakeQuestion("Sol\n\nLab\n\nB7", true, false),
  _MakeQuestion("Solb\n\nLab\n\nB7", false, true),
  _MakeQuestion("Fa\n\nSolb\n\nB7", true, false),
  _MakeQuestion("Fab\n\nSolb\n\nB7", false, true),
  _MakeQuestion("Re\n\nMib\n\nB7", true, false),
  _MakeQuestion("Reb\n\nMib\n\nB7", false, true),
  _MakeQuestion("Do\n\nReb\n\nB7", true, false),
  _MakeQuestion("Do#\n\nReb\n\nB7", false, true),
];
