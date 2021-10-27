import 'dart:math';

import 'package:araliklar3/alt%C4%B1l%C4%B1lar.dart';

import '../Beşli.dart';
import 'package:flutter/material.dart';

import '../main.dart';

bool tiklandimi = false;

class SoruOlustur5 extends StatefulWidget {
  SoruOlustur5({Key? key}) : super(key: key);

  @override
  _SoruOlustur5State createState() => _SoruOlustur5State();
}

class _SoruOlustur5State extends State<SoruOlustur5> {
  _MakeQuestion soru = a[Random().nextInt(a.length)];

  _SoruOlustur5State();

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
                    sorusayisi5++;
                    sorsayisi5++;
                    tiklandimi = true;
                    arengi = Colors.white;
                    brengi = Colors.green;
                    a.remove(soru);
                  } else if (tiklandimi == false &&
                      soru.falseanswer == 'Yanlış') {
                    tiklandimi = true;
                    sorusayisi5++;
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
  _MakeQuestion("Lab\n\nDo\n\nK6", true, false),
  _MakeQuestion("La\n\nDo\n\nK6", false, true),
  _MakeQuestion("La\n\nDo#\n\nK6", true, false),
  _MakeQuestion("Lab\n\nDo#\n\nK6", false, true),
  _MakeQuestion("Sib\n\nRe\n\nK6", true, false),
  _MakeQuestion("Si\n\nRe\n\nK6", false, true),
  _MakeQuestion("Si\n\nRe#\n\nK6", true, false),
  _MakeQuestion("Si#\n\nRe#\n\nK6", false, true),
  _MakeQuestion("Do\n\nMi\n\nK6", true, false),
  _MakeQuestion("Do#\n\nMi\n\nK6", false, true),
  _MakeQuestion("Reb\n\nFa\n\nK6", true, false),
  _MakeQuestion("Re\n\nFa\n\nK6", false, true),
  _MakeQuestion("Re\n\nFa#\n\nK6", true, false),
  _MakeQuestion("Re#\n\nFa#\n\nK6", false, true),
  _MakeQuestion("Mib\n\nSol\n\nK6", true, false),
  _MakeQuestion("Mi\n\nSol\n\nK6", false, true),
  _MakeQuestion("Mi\n\nSol#\n\nK6", true, false),
  _MakeQuestion("Mi#\n\nSol#\n\nK6", false, true),
  _MakeQuestion("Fa\n\nLa\n\nK6", true, false),
  _MakeQuestion("Fab\n\nLa\n\nK6", false, true),
  _MakeQuestion("Fa#\n\nLa#\n\nK6", true, false),
  _MakeQuestion("Fa\n\nLa#\n\nK6", false, true),
  _MakeQuestion("Sol\n\nSi\n\nK6", true, false),
  _MakeQuestion("Solb\n\nSi\n\nK6", false, true),
  _MakeQuestion("Solb\n\nSib\n\nK6", true, false),
  _MakeQuestion("Solbb\n\nSib\n\nK6", false, true),
  _MakeQuestion("Fab\n\nLab\n\nK6", true, false),
  _MakeQuestion("Fabb\n\nLab\n\nK6", false, true),
  _MakeQuestion("Mibb\n\nSolb\n\nK6", true, false),
  _MakeQuestion("Mib\n\nSolb\n\nK6", false, true),
  _MakeQuestion("Dob\n\nMib\n\nK6", true, false),
  _MakeQuestion("Dobb\n\nMib\n\nK6", false, true),
  _MakeQuestion("Sibb\n\nReb\n\nK6", true, false),
  _MakeQuestion("Sib\n\nReb\n\nK6", false, true),
  _MakeQuestion("La\n\nDo\n\nB6", true, false),
  _MakeQuestion("La#\n\nDo\n\nB6", false, true),
  _MakeQuestion("La#\n\nDo#\n\nB6", true, false),
  _MakeQuestion("La\n\nDo#\n\nB6", false, true),
  _MakeQuestion("Si\n\nRe\n\nB6", true, false),
  _MakeQuestion("Si#\n\nRe\n\nB6", false, true),
  _MakeQuestion("Si#\n\nRe#\n\nB6", true, false),
  _MakeQuestion("Si\n\nRe#\n\nB6", false, true),
  _MakeQuestion("Do#\n\nMi\n\nB6", true, false),
  _MakeQuestion("Dox\n\nMi\n\nB6", false, true),
  _MakeQuestion("Re\n\nFa\n\nB6", true, false),
  _MakeQuestion("Re#\n\nFa\n\nB6", false, true),
  _MakeQuestion("Re#\n\nFa#\n\nB6", true, false),
  _MakeQuestion("Re\n\nFa#\n\nB6", false, true),
  _MakeQuestion("Mi\n\nSol\n\nB6", true, false),
  _MakeQuestion("Mi#\n\nSol\n\nB6", false, true),
  _MakeQuestion("Mi#\n\nSol#\n\nB6", true, false),
  _MakeQuestion("Mi\n\nSol#\n\nB6", false, true),
  _MakeQuestion("Fa#\n\nLa\n\nB6", true, false),
  _MakeQuestion("Fa\n\nLa\n\nB6", false, true),
  _MakeQuestion("Fax\n\nLa#\n\nB6", true, false),
  _MakeQuestion("Fa3\n\nLa#\n\nB6", false, true),
  _MakeQuestion("Sol#\n\nSi\n\nB6", true, false),
  _MakeQuestion("Sol\n\nSi\n\nB6", false, true),
  _MakeQuestion("Sol\n\nSib\n\nB6", true, false),
  _MakeQuestion("Solb\n\nSib\n\nB6", false, true),
  _MakeQuestion("Fa\n\nLab\n\nB6", true, false),
  _MakeQuestion("Fab\n\nLab\n\nB6", false, true),
  _MakeQuestion("Mib\n\nSolb\n\nB6", true, false),
  _MakeQuestion("Mi\n\nSolb\n\nB6", false, true),
  _MakeQuestion("Do\n\nMib\n\nB6", true, false),
  _MakeQuestion("Dob\n\nMib\n\nB6", false, true),
  _MakeQuestion("Sib\n\nReb\n\nB6", true, false),
  _MakeQuestion("Si\n\nReb\n\nB6", false, true),
];
