import 'dart:math';

import '../Iki.dart';
import 'package:flutter/material.dart';

import '../main.dart';

bool tiklandimi = false;

class SoruOlustur extends StatefulWidget {
  SoruOlustur({Key? key}) : super(key: key);

  @override
  _SoruOlusturState createState() => _SoruOlusturState();
}

class _SoruOlusturState extends State<SoruOlustur> {
  bool tiklandimi = false;
  _MakeQuestion soru = a[Random().nextInt(a.length)];

  _SoruOlusturState();

  Color arengi = Colors.white;
  Color brengi = Colors.white;

  @override
  Widget build(BuildContext context) {
    return ListBody(children: [
      Card(
        color: Colors.white,
        borderOnForeground: true,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7), side: BorderSide.none),
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
                      print(a.length);
                      sorsayisi++;
                      sorusayisi++;
                      tiklandimi = true;
                      brengi = Colors.white;
                      arengi = Colors.green;
                      a.remove(soru);
                    } else if (tiklandimi == false &&
                        soru.falseanswer == 'Doğru') {
                      tiklandimi = true;
                      sorusayisi++;
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
                    sorusayisi++;
                    sorsayisi++;
                    tiklandimi = true;
                    arengi = Colors.white;
                    brengi = Colors.green;
                    a.remove(soru);
                  } else if (tiklandimi == false &&
                      soru.falseanswer == 'Yanlış') {
                    tiklandimi = true;
                    sorusayisi++;
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

List<_MakeQuestion> a = [
  _MakeQuestion('Reb\n\nDo\n\nK2', true, false),
  _MakeQuestion('Re\n\nDo\n\nK2', false, true),
  _MakeQuestion('Re\n\nDo\n\nB2', true, false),
  _MakeQuestion('Reb\n\nDo\n\nB2', false, true),
  _MakeQuestion('Re\n\nDo#\n\nK2', true, false),
  _MakeQuestion('Reb\n\nDo#\n\nK2', false, true),
  _MakeQuestion('Re#\n\nDo#\n\nB2', true, false),
  _MakeQuestion('Re\n\nDo#\n\nB2', false, true),
  _MakeQuestion('Mib\n\nRe\n\nK2', true, false),
  _MakeQuestion('Mi\n\nRe\n\nK2', false, true),
  _MakeQuestion('Mi\n\nRe\n\nB2', true, false),
  _MakeQuestion('Mib\n\nRe\n\nB2', false, true),
  _MakeQuestion('Mi\n\nRe#\n\nK2', true, false),
  _MakeQuestion('Mi#\n\nRe#\n\nK2', false, true),
  _MakeQuestion('Mi#\n\nRe#\n\nB2', true, false),
  _MakeQuestion('Mi\n\nRe#\n\nB2', false, true),
  _MakeQuestion('Fa\n\nMi\n\nK2', true, false),
  _MakeQuestion('Fa\n\nMi\n\nB2', false, true),
  _MakeQuestion('Fa#\n\nMi\n\nB2', true, false),
  _MakeQuestion('Fab\n\nMi\n\nB2', false, true),
  _MakeQuestion('Solb\n\nFa\n\nK2', true, false),
  _MakeQuestion('Fa#\n\nFa\n\nK2', false, true),
  _MakeQuestion('Sol\n\nFa\n\nB2', true, false),
  _MakeQuestion('solb\n\nFa\n\nB2', false, true),
  _MakeQuestion('Sol\n\nFa#\n\nK2', true, false),
  _MakeQuestion('Solb\n\nFa#\n\nK2', false, true),
  _MakeQuestion('Sol#\n\nFa#\n\nB2', true, false),
  _MakeQuestion('Sol\n\nFa#\n\nB2', false, true),
  _MakeQuestion('Lab\n\nSol\n\nK2', true, false),
  _MakeQuestion('La\n\nSol\n\nK2', false, true),
  _MakeQuestion('La\n\nSol\n\nB2', true, false),
  _MakeQuestion('La#\n\nSol\n\nB2', false, true),
  _MakeQuestion('La\n\nSol#\n\nK2', true, false),
  _MakeQuestion('Si\n\nSol#\n\nK2', false, true),
  _MakeQuestion('La#\n\nSol#\n\nB2', true, false),
  _MakeQuestion('Sib\n\nSol#\n\nB2', false, true),
  _MakeQuestion('Sib\n\nLa\n\nK2', true, false),
  _MakeQuestion('Si#\n\nLa\n\nK2', false, true),
  _MakeQuestion('Si\n\nLa\n\nB2', true, false),
  _MakeQuestion('Do#\n\nLa\n\nB2', false, true),
  _MakeQuestion('Si\n\nLa#\n\nK2', true, false),
  _MakeQuestion('Sib\n\nLa#\n\nK2', false, true),
  _MakeQuestion('Si#\n\nLa#\n\nB2', true, false),
  _MakeQuestion('Si\n\nLa#\n\nB2', false, true),
  _MakeQuestion('Do\n\nSi\n\nB2', true, false),
  _MakeQuestion('Do#\n\nSi\n\nK2', false, true),
  _MakeQuestion('Do#\n\nSi\n\nB2', true, false),
  _MakeQuestion('Reb\n\nSi\n\nB2', false, true),
  _MakeQuestion('Dob\n\nSib\n\nK2', true, false),
  _MakeQuestion('Do\n\nSib\n\nK2', false, true),
  _MakeQuestion('Do\n\nSib\n\nB2', true, false),
  _MakeQuestion('Do#\n\nSib\n\nB2', false, true),
  _MakeQuestion('Sibb\n\nLab\n\nK2', true, false),
  _MakeQuestion('Sib\n\nLab\n\nK2', false, true),
  _MakeQuestion('Sib\n\nLab\n\nB2', true, false),
  _MakeQuestion('Si#\n\nLab\n\nB2', false, true),
  _MakeQuestion('Labb\n\nSolb\n\nK2', true, false),
  _MakeQuestion('La#\n\nSolb\n\nK2', false, true),
  _MakeQuestion('Lab\n\nSolb\n\nB2', true, false),
  _MakeQuestion('La#\n\nSolb\n\nB2', false, true),
  _MakeQuestion('Fab\n\nMib\n\nK2', true, false),
  _MakeQuestion('Fa\n\nMib\n\nK2', false, true),
  _MakeQuestion('Fa\n\nMib\n\nB2', true, false),
  _MakeQuestion('Fab\n\nMib\n\nB2', false, true),
  _MakeQuestion('Mibb\n\nReb\n\nK2', true, false),
  _MakeQuestion('Mib\n\nReb\n\nK2', false, true),
  _MakeQuestion('Mib\n\nReb\n\nB2', true, false),
  _MakeQuestion('Re#\n\nReb\n\nB2', false, true),
];
