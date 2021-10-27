import 'dart:math';

import '../Uc.dart';
import 'package:flutter/material.dart';

import '../main.dart';

bool tiklandimi = false;

class SoruOlustur2 extends StatefulWidget {
  SoruOlustur2({Key? key}) : super(key: key);

  @override
  _SoruOlustur2State createState() => _SoruOlustur2State();
}

class _SoruOlustur2State extends State<SoruOlustur2> {
  _MakeQuestion soru = a3[Random().nextInt(a3.length)];

  _SoruOlustur2State();
  Color arengi = Colors.white;
  Color brengi = Colors.white;

  bool tiklandimi = false;
  @override
  Widget build(BuildContext context) {
    print(a3.length);
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
                    if (a3.length >= 0) {
                      if (tiklandimi == false && soru.trueanswer == 'Doğru') {
                        sorsayisi2++;
                        sorusayisi2++;
                        tiklandimi = true;
                        brengi = Colors.white;
                        arengi = Colors.green;
                        a3.remove(soru);
                      } else if (tiklandimi == false &&
                          soru.falseanswer == 'Doğru') {
                        tiklandimi = true;
                        sorusayisi2++;
                        brengi = Colors.white;
                        arengi = Colors.red;
                      }
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
                    sorusayisi2++;
                    sorsayisi2++;
                    tiklandimi = true;
                    arengi = Colors.white;
                    brengi = Colors.green;
                    a3.remove(soru);
                  } else if (tiklandimi == false &&
                      soru.falseanswer == 'Yanlış') {
                    tiklandimi = true;
                    sorusayisi2++;
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

List<_MakeQuestion> a3 = [
  _MakeQuestion('Mib\n\nDo\n\nK3', true, false),
  _MakeQuestion('Mi\n\nDo\n\nK3', false, true),
  _MakeQuestion('Mi\n\nDo\n\nB3', true, false),
  _MakeQuestion('Mib\n\nDo\n\nB3', false, true),
  _MakeQuestion('Mi\n\nDo#\n\nK3', true, false),
  _MakeQuestion('Mib\n\nDo#\n\nK3', false, true),
  _MakeQuestion('Mi#\n\nDo#\n\nB3', true, false),
  _MakeQuestion('Mix\n\nDo#\n\nB3', false, true),
  _MakeQuestion('Fa\n\nRe\n\nK3', true, false),
  _MakeQuestion('Solb\n\nRe\n\nK3', false, true),
  _MakeQuestion('Fa#\n\nRe\n\nB3', true, false),
  _MakeQuestion('Fa\n\nRe\n\nB3', false, true),
  _MakeQuestion('Fa#\n\nRe#\n\nK3', true, false),
  _MakeQuestion('Fa\n\nRe#\n\nK3', false, true),
  _MakeQuestion('Fax\n\nRe#\n\nB3', true, false),
  _MakeQuestion('Fa#\n\nRe#\n\nB3', false, true),
  _MakeQuestion('Sol\n\nMi\n\nK3', true, false),
  _MakeQuestion('Fa\n\nMi\n\nK3', false, true),
  _MakeQuestion('Sol#\n\nMi\n\nB3', true, false),
  _MakeQuestion('Sol\n\nMi\n\nB3', false, true),
  _MakeQuestion('Lab\n\nFa\n\nK3', true, false),
  _MakeQuestion('Sol#\n\nFa\n\nK3', false, true),
  _MakeQuestion('La\n\nFa\n\nB3', true, false),
  _MakeQuestion('La#\n\nFa\n\nB3', false, true),
  _MakeQuestion('La\n\nFa#\n\nK3', true, false),
  _MakeQuestion('Lab\n\nFa#\n\nK3', false, true),
  _MakeQuestion('La#\n\nFa#\n\nB3', true, false),
  _MakeQuestion('La\n\nFa#\n\nB3', false, true),
  _MakeQuestion('Sib\n\nSol\n\nK3', true, false),
  _MakeQuestion('La#\n\nSol\n\nK3', false, true),
  _MakeQuestion('Si\n\nSol\n\nB3', true, false),
  _MakeQuestion('Si#\n\nSol\n\nB3', false, true),
  _MakeQuestion('Si\n\nSol#\n\nK3', true, false),
  _MakeQuestion('Sib\n\nSol#\n\nK3', false, true),
  _MakeQuestion('Si#\n\nSol#\n\nB3', true, false),
  _MakeQuestion('La#\n\nSol#\n\nB3', false, true),
  _MakeQuestion('Do\n\nLa\n\nK3', true, false),
  _MakeQuestion('Do#\n\nLa\n\nK3', false, true),
  _MakeQuestion('Do#\n\nLa\n\nB3', true, false),
  _MakeQuestion('Do\n\nLa\n\nB3', false, true),
  _MakeQuestion('Do#\n\nLa#\n\nK3', true, false),
  _MakeQuestion('Dox\n\nLa#\n\nK3', false, true),
  _MakeQuestion('Dox\n\nLa#\n\nB3', true, false),
  _MakeQuestion('Do#\n\nLa#\n\nB3', false, true),
  _MakeQuestion('Re\n\nSi\n\nK3', true, false),
  _MakeQuestion('Reb\n\nSi\n\nK3', false, true),
  _MakeQuestion('Re#\n\nSi\n\nB3', true, false),
  _MakeQuestion('Rex\n\nSi\n\nB3', false, true),
  _MakeQuestion('Reb\n\nSib\n\nK3', true, false),
  _MakeQuestion('Re\n\nSib\n\nK3', false, true),
  _MakeQuestion('Re\n\nSib\n\nB3', true, false),
  _MakeQuestion('Re#\n\nSib\n\nB3', false, true),
  _MakeQuestion('Do\n\nLab\n\nB3', true, false),
  _MakeQuestion('Do\n\nLab\n\nK3', false, true),
  _MakeQuestion('Do\n\nLab\n\nB3', true, false),
  _MakeQuestion('Dob\n\nLab\n\nB3', false, true),
  _MakeQuestion('Sibb\n\nSolb\n\nK3', true, false),
  _MakeQuestion('Sib\n\nSolb\n\nK3', false, true),
  _MakeQuestion('Sib\n\nSolb\n\nB3', true, false),
  _MakeQuestion('Sibb\n\nSolb\n\nB3', false, true),
  _MakeQuestion('Solb\n\nMib\n\nK3', true, false),
  _MakeQuestion('Solbb\n\nMib\n\nK3', false, true),
  _MakeQuestion('Sol\n\nMib\n\nB3', true, false),
  _MakeQuestion('Solb\n\nMib\n\nB3', false, true),
  _MakeQuestion('Fab\n\nReb\n\nK3', true, false),
  _MakeQuestion('Fabb\n\nReb\n\nK3', false, true),
  _MakeQuestion('Fa\n\nReb\n\nB3', true, false),
  _MakeQuestion('Fa#\n\nReb\n\nB3', false, true),
];
