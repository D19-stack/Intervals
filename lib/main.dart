import 'package:araliklar3/Be%C5%9Fli.dart';
import 'package:araliklar3/Iki.dart';
import 'package:araliklar3/alt%C4%B1l%C4%B1lar.dart';
import 'package:araliklar3/scorepage.dart';
import 'package:araliklar3/Tam4.dart';
import 'package:araliklar3/Uc.dart';
import 'package:araliklar3/yedililer.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());
int _currentIndex = 0;

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          shadowColor: Colors.black, scaffoldBackgroundColor: Colors.white),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            onTap: (verilendeger) {
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
                setState(() {
                  build(context);
                });
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
        body: SafeArea(
          child: Stack(
            children: [
              Image.asset(
                "images/HomeImage.png",
                fit: BoxFit.cover,
                height: 20000,
                width: 20000,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            if (defaultTargetPlatform == TargetPlatform.iOS ||
                                defaultTargetPlatform == TargetPlatform.macOS) {
                              Navigator.of(context).push(CupertinoPageRoute(
                                  builder: (context) => Iki()));
                            } else if (defaultTargetPlatform ==
                                    TargetPlatform.android ||
                                defaultTargetPlatform ==
                                    TargetPlatform.fuchsia ||
                                defaultTargetPlatform == TargetPlatform.linux ||
                                defaultTargetPlatform ==
                                    TargetPlatform.windows) {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Iki()));
                            }
                          },
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(5.2),
                              child: Center(
                                child: Text(
                                  'İkili Aralıklar',
                                  style: Theme.of(context).textTheme.headline5,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 4,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            if (defaultTargetPlatform == TargetPlatform.iOS ||
                                defaultTargetPlatform == TargetPlatform.macOS) {
                              Navigator.of(context).push(CupertinoPageRoute(
                                  builder: (context) => Uc()));
                            } else if (defaultTargetPlatform ==
                                    TargetPlatform.android ||
                                defaultTargetPlatform ==
                                    TargetPlatform.fuchsia ||
                                defaultTargetPlatform == TargetPlatform.linux ||
                                defaultTargetPlatform ==
                                    TargetPlatform.windows) {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Uc()));
                            }
                          },
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(5.2),
                              child: Center(
                                child: Text(
                                  'Üçlü Aralıklar',
                                  style: Theme.of(context).textTheme.headline5,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 4,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            if (defaultTargetPlatform == TargetPlatform.iOS ||
                                defaultTargetPlatform == TargetPlatform.macOS) {
                              Navigator.of(context).push(CupertinoPageRoute(
                                  builder: (context) => Tam4()));
                            } else if (defaultTargetPlatform ==
                                    TargetPlatform.android ||
                                defaultTargetPlatform ==
                                    TargetPlatform.fuchsia ||
                                defaultTargetPlatform == TargetPlatform.linux ||
                                defaultTargetPlatform ==
                                    TargetPlatform.windows) {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Tam4()));
                            }
                          },
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(5.2),
                              child: Center(
                                child: Text(
                                  'Dörtlü Aralıklar',
                                  style: Theme.of(context).textTheme.headline5,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 4,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            if (defaultTargetPlatform == TargetPlatform.iOS ||
                                defaultTargetPlatform == TargetPlatform.macOS) {
                              Navigator.of(context).push(CupertinoPageRoute(
                                  builder: (context) => Besli()));
                            } else if (defaultTargetPlatform ==
                                    TargetPlatform.android ||
                                defaultTargetPlatform ==
                                    TargetPlatform.fuchsia ||
                                defaultTargetPlatform == TargetPlatform.linux ||
                                defaultTargetPlatform ==
                                    TargetPlatform.windows) {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Besli()));
                            }
                          },
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(5.2),
                              child: Center(
                                child: Text(
                                  'Beşli Aralıklar',
                                  style: Theme.of(context).textTheme.headline5,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 4,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            if (defaultTargetPlatform == TargetPlatform.iOS ||
                                defaultTargetPlatform == TargetPlatform.macOS) {
                              Navigator.of(context).push(CupertinoPageRoute(
                                  builder: (context) => Altililar()));
                            } else if (defaultTargetPlatform ==
                                    TargetPlatform.android ||
                                defaultTargetPlatform ==
                                    TargetPlatform.fuchsia ||
                                defaultTargetPlatform == TargetPlatform.linux ||
                                defaultTargetPlatform ==
                                    TargetPlatform.windows) {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Altililar()));
                            }
                          },
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(5.2),
                              child: Center(
                                child: Text(
                                  'Altılı Aralıklar',
                                  style: Theme.of(context).textTheme.headline5,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 4,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            if (defaultTargetPlatform == TargetPlatform.iOS ||
                                defaultTargetPlatform == TargetPlatform.macOS) {
                              Navigator.of(context).push(CupertinoPageRoute(
                                  builder: (context) => Yedililer()));
                            } else if (defaultTargetPlatform ==
                                    TargetPlatform.android ||
                                defaultTargetPlatform ==
                                    TargetPlatform.fuchsia ||
                                defaultTargetPlatform == TargetPlatform.linux ||
                                defaultTargetPlatform ==
                                    TargetPlatform.windows) {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Yedililer()));
                            }
                          },
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(5.2),
                              child: Center(
                                child: Text(
                                  'Yedili Aralıklar',
                                  style: Theme.of(context).textTheme.headline5,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
