import 'dart:math';

import 'package:araliklar3/Tam4.dart';

import '../Uc.dart';
import 'package:flutter/material.dart';

import '../main.dart';

bool tiklandimi = false;

class SoruOlustur3 extends StatefulWidget {
  SoruOlustur3({Key? key}) : super(key: key);

  @override
  _SoruOlustur3State createState() => _SoruOlustur3State();
}

class _SoruOlustur3State extends State<SoruOlustur3> {
  _MakeQuestion soru = a[Random().nextInt(a.length)];

  _SoruOlustur3State();

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
                      sorsayisi3++;
                      sorusayisi3++;
                      tiklandimi = true;
                      brengi = Colors.white;
                      arengi = Colors.green;
                      a.remove(soru);
                    } else if (tiklandimi == false &&
                        soru.falseanswer == 'Doğru') {
                      tiklandimi = true;
                      sorusayisi3++;
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
                    sorusayisi3++;
                    sorsayisi3++;
                    tiklandimi = true;
                    arengi = Colors.white;
                    brengi = Colors.green;
                    a.remove(soru);
                  } else if (tiklandimi == false &&
                      soru.falseanswer == 'Yanlış') {
                    tiklandimi = true;
                    sorusayisi3++;
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

List a = <_MakeQuestion>[
  _MakeQuestion("Fa\n\nDo\n\nT4", true, false),
  _MakeQuestion("Fa#\n\nDo\n\nT4", false, true),
  _MakeQuestion("Fa#\n\nDo#\n\nT4", true, false),
  _MakeQuestion("Fa\n\nDo#\n\nT4", false, true),
  _MakeQuestion("Sol\n\nRe\n\nT4", true, false),
  _MakeQuestion("Solb\n\nRe\n\nT4", false, true),
  _MakeQuestion("Sol#\n\nRe#\n\nT4", true, false),
  _MakeQuestion("Solb\n\nRe#\n\nT4", false, true),
  _MakeQuestion("La\n\nMi\n\nT4", true, false),
  _MakeQuestion("La#\n\nMi\n\nT4", false, true),
  _MakeQuestion("Sib\n\nFa\n\nT4", true, false),
  _MakeQuestion("Si\n\nFa\n\nT4", false, true),
  _MakeQuestion("Si\n\nFa#\n\nT4", true, false),
  _MakeQuestion("Si#\n\nFa#\n\nT4", false, true),
  _MakeQuestion("Do\n\nSol\n\nT4", true, false),
  _MakeQuestion("Do#\n\nSol\n\nT4", false, true),
  _MakeQuestion("Do#\n\nSol#\n\nT4", true, false),
  _MakeQuestion("Dox\n\nSol#\n\nT4", false, true),
  _MakeQuestion("Re\n\nLa\n\nT4", true, false),
  _MakeQuestion("Mi\n\nLa\n\nT4", false, true),
  _MakeQuestion("Re#\n\nLa#\n\nT4", true, false),
  _MakeQuestion("Re\n\nLa#\n\nT4", false, true),
  _MakeQuestion("Mi\n\nSi\n\nT4", true, false),
  _MakeQuestion("Fa\n\nSi\n\nT4", false, true),
  _MakeQuestion("Mib\n\nSib\n\nT4", true, false),
  _MakeQuestion("Mi\n\nSib\n\nT4", false, true),
  _MakeQuestion("Reb\n\nLab\n\nT4", true, false),
  _MakeQuestion("Do#\n\nLab\n\nT4", false, true),
  _MakeQuestion("Sob\n\nSolb\n\nT4", true, false),
  _MakeQuestion("Do\n\nSolb\n\nT4", false, true),
  _MakeQuestion("Lab\n\nMib\n\nT4", true, false),
  _MakeQuestion("La#\n\nMib\n\nT4", false, true),
  _MakeQuestion("Solb\n\nReb\n\nT4", true, false),
  _MakeQuestion("Lab\n\nReb\n\nT4", false, true),
  _MakeQuestion("Fa#\n\nDo\n\n+4", true, false),
  _MakeQuestion("Fa\n\nDo\n\n+4", false, true),
  _MakeQuestion("Fax\n\nDo#\n\n+4", true, false),
  _MakeQuestion("Fa#\n\nDo#\n\n+4", false, true),
  _MakeQuestion("Sol#\n\nRe\n\n+4", true, false),
  _MakeQuestion("Sol\n\nRe\n\n+4", false, true),
  _MakeQuestion("Solx\n\nRe#\n\n+4", true, false),
  _MakeQuestion("Sol#\n\nRe#\n\n+4", false, true),
  _MakeQuestion("La#\n\nMi\n\n+4", true, false),
  _MakeQuestion("Lax\n\nMi\n\n+4", false, true),
  _MakeQuestion("Si\n\nFa\n\n+4", true, false),
  _MakeQuestion("Si#\n\nFa\n\n+4", false, true),
  _MakeQuestion("Si#\n\nFa#\n\n+4", true, false),
  _MakeQuestion("Six\n\nFa#\n\n+4", false, true),
  _MakeQuestion("Do#\n\nSol\n\n+4", true, false),
  _MakeQuestion("Do\n\nSol\n\n+4", false, true),
  _MakeQuestion("Dox\n\nSol#\n\n+4", true, false),
  _MakeQuestion("Do#\n\nSol#\n\n+4", false, true),
  _MakeQuestion("Re#\n\nLa\n\n+4", true, false),
  _MakeQuestion("Re\n\nLa\n\n+4", false, true),
  _MakeQuestion("Rex\n\nLa#\n\n+4", true, false),
  _MakeQuestion("Re\n\nLa#\n\n+4", false, true),
  _MakeQuestion("Mi#\n\nSi\n\n+4", true, false),
  _MakeQuestion("Mix\n\nSi\n\n+4", false, true),
  _MakeQuestion("Mi\n\nSib\n\n+4", true, false),
  _MakeQuestion("Mib\n\nSib\n\n+4", false, true),
  _MakeQuestion("Re\n\nLab\n\n+4", true, false),
  _MakeQuestion("Re#\n\nLab\n\n+4", false, true),
  _MakeQuestion("Do\n\nSolb\n\n+4", true, false),
  _MakeQuestion("Dob\n\nSolb\n\n+4", false, true),
  _MakeQuestion("La\n\nMib\n\n+4", true, false),
  _MakeQuestion("La#\n\nMib\n\n+4", false, true),
  _MakeQuestion("Sol\n\nReb\n\n+4", true, false),
  _MakeQuestion("Solb\n\nReb\n\n+4", false, true),
];
