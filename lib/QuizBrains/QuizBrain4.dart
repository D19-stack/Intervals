import 'dart:math';

import 'package:araliklar3/Tam4.dart';

import '../Beşli.dart';
import '../Uc.dart';
import 'package:flutter/material.dart';

import '../main.dart';

bool tiklandimi = false;

class SoruOlustur4 extends StatefulWidget {
  SoruOlustur4({Key? key}) : super(key: key);

  @override
  _SoruOlustur4State createState() => _SoruOlustur4State();
}

class _SoruOlustur4State extends State<SoruOlustur4> {
  _MakeQuestion soru = a[Random().nextInt(a.length)];

  _SoruOlustur4State();

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
                      sorsayisi4++;
                      sorusayisi4++;
                      tiklandimi = true;
                      brengi = Colors.white;
                      arengi = Colors.green;
                      a.remove(soru);
                    } else if (tiklandimi == false &&
                        soru.falseanswer == 'Doğru') {
                      tiklandimi = true;
                      sorusayisi4++;
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
                    sorusayisi4++;
                    sorsayisi4++;
                    tiklandimi = true;
                    arengi = Colors.white;
                    brengi = Colors.green;
                    a.remove(soru);
                  } else if (tiklandimi == false &&
                      soru.falseanswer == 'Yanlış') {
                    tiklandimi = true;
                    sorusayisi4++;
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
  _MakeQuestion("Sol\n\nDo\n\nT5", true, false),
  _MakeQuestion("La\n\nDo\n\nT5", false, true),
  _MakeQuestion("Sol#\n\nDo#\n\nT5", true, false),
  _MakeQuestion("Sol\n\nDo#\n\nT5", false, true),
  _MakeQuestion("La\n\nRe\n\nT5", true, false),
  _MakeQuestion("Sol\n\nRe\n\nT5", false, true),
  _MakeQuestion("La#\n\nRe#\n\nT5", true, false),
  _MakeQuestion("Lax\n\nRe#\n\nT5", false, true),
  _MakeQuestion("Si\n\nMi\n\nT5", true, false),
  _MakeQuestion("Sib\n\nMi\n\nT5", false, true),
  _MakeQuestion("Do\n\nFa\n\nT5", true, false),
  _MakeQuestion("Dob\n\nFa\n\nT5", false, true),
  _MakeQuestion("Do#\n\nFa#\n\nT5", true, false),
  _MakeQuestion("Do\n\nFa#\n\nT5", false, true),
  _MakeQuestion("Re\n\nSol\n\nT5", true, false),
  _MakeQuestion("Reb\n\nSol\n\nT5", false, true),
  _MakeQuestion("Re#\n\nSol#\n\nT5", true, false),
  _MakeQuestion("Reb\n\nSol#\n\nT5", false, true),
  _MakeQuestion("Mi\n\nLa\n\nT5", true, false),
  _MakeQuestion("Mib\n\nLa\n\nT5", false, true),
  _MakeQuestion("Mi#\n\nLa#\n\nT5", true, false),
  _MakeQuestion("Mi\n\nLa#\n\nT5", false, true),
  _MakeQuestion("Fa#\n\nSi\n\nT5", true, false),
  _MakeQuestion("Fa\n\nSi\n\nT5", false, true),
  _MakeQuestion("Fa\n\nSib\n\nT5", true, false),
  _MakeQuestion("Fab\n\nSib\n\nT5", false, true),
  _MakeQuestion("Mib\n\nLab\n\nT5", true, false),
  _MakeQuestion("Mi#\n\nLab\n\nT5", false, true),
  _MakeQuestion("Reb\n\nSolb\n\nT5", true, false),
  _MakeQuestion("Rebb\n\nSolb\n\nT5", false, true),
  _MakeQuestion("Sib\n\nMib\n\nT5", true, false),
  _MakeQuestion("La\n\nMib\n\nT5", false, true),
  _MakeQuestion("Lab\n\nReb\n\nT5", true, false),
  _MakeQuestion("Labb\n\nReb\n\nT5", false, true),
  _MakeQuestion("Solb\n\nDo\n\n-5", true, false),
  _MakeQuestion("Sol#\n\nDo\n\n-5", false, true),
  _MakeQuestion("Sol\n\nDo#\n\n-5", true, false),
  _MakeQuestion("Sol#\n\nDo#\n\n-5", false, true),
  _MakeQuestion("Lab\n\nRe\n\n-5", true, false),
  _MakeQuestion("La\n\nRe\n\n-5", false, true),
  _MakeQuestion("La\n\nRe#\n\n-5", true, false),
  _MakeQuestion("La#\n\nRe#\n\n-5", false, true),
  _MakeQuestion("Sib\n\nMi\n\n-5", true, false),
  _MakeQuestion("La#\n\nMi\n\n-5", false, true),
  _MakeQuestion("Dob\n\nFa\n\n-5", true, false),
  _MakeQuestion("Do\n\nFa\n\n-5", false, true),
  _MakeQuestion("Do\n\nFa#\n\n-5", true, false),
  _MakeQuestion("Dob\n\nFa#\n\n-5", false, true),
  _MakeQuestion("Reb\n\nSol\n\n-5", true, false),
  _MakeQuestion("Re\n\nSol\n\n-5", false, true),
  _MakeQuestion("Re\n\nSol#\n\n-5", true, false),
  _MakeQuestion("Re#\n\nSol#\n\n-5", false, true),
  _MakeQuestion("Mib\n\nLa\n\n-5", true, false),
  _MakeQuestion("Re#\n\nLa\n\n-5", false, true),
  _MakeQuestion("Mi\n\nLa#\n\n-5", true, false),
  _MakeQuestion("Mib\n\nLa#\n\n-5", false, true),
  _MakeQuestion("Fa\n\nSi\n\n-5", true, false),
  _MakeQuestion("Fab\n\nSi\n\n-5", false, true),
  _MakeQuestion("Fab\n\nSib\n\n-5", true, false),
  _MakeQuestion("Fa\n\nSib\n\n-5", false, true),
  _MakeQuestion("Mibb\n\nLab\n\n-5", true, false),
  _MakeQuestion("Mib\n\nLab\n\n-5", false, true),
  _MakeQuestion("Rebb\n\nSolb\n\n-5", true, false),
  _MakeQuestion("Reb\n\nSolb\n\n-5", false, true),
  _MakeQuestion("Sibb\n\nMib\n\n-5", true, false),
  _MakeQuestion("Lab\n\nMib\n\n-5", false, true),
  _MakeQuestion("Labb\n\nReb\n\n-5", true, false),
  _MakeQuestion("Lab\n\nReb\n\n-5", false, true)
];
