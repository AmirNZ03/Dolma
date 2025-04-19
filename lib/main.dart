import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String _title = 'Flutter Stateful Clicker Counter';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> _options = [
    'EN',
    'AR',
    'ZH',
    'EN',
    'FR',
    'FA',
    'RU',
    'ES',
    'TR'
  ];
  Color _box = Colors.white;
  Color _chbox = Color(0xffe8620a);
  String? _selectedOption;

  void _color() {
    setState(() {
      _box = Color(0xff042255);
      _chbox = Colors.white;
    });
  }

  Color _boxi = Colors.white;
  Color _chboxi = Color(0xffe8620a);

  void _colors() {
    setState(() {
      _boxi = Color(0xff042255);
      _chboxi = Colors.white;
    });
  }

  Color _boxie = Colors.white;
  Color _chboxie = Color(0xffe8620a);

  void _colorse() {
    setState(() {
      _boxie = Colors.white;
      _chboxie = Color(0xff042255);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading:
              Image.asset('assets/logo-loading.png', width: 300, height: 300),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                OutlinedButton(
                  onHover: (hovering) {
                    if (hovering) {
                      _color();
                    } else {
                      setState(() {
                        _box = Colors.white;
                        _chbox = Color(0xffe8620a);
                      });
                    }
                  },
                  onPressed: () {
                    print("آیکون کلیک شد");
                  },
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Color(0xffe8620a), width: 2),
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                    backgroundColor: _box,
                  ),
                  child: Icon(
                    Icons.location_on_outlined,
                    color: _chbox,
                    size: 20,
                  ),
                ),
                OutlinedButton(
                  onPressed: () {
                    print("آیکون کلیک شد");
                  },
                  onHover: (hovering) {
                    if (hovering) {
                      _colors();
                    } else {
                      setState(() {
                        _boxi = Colors.white;
                        _chboxi = Color(0xffe8620a);
                      });
                    }
                  },
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Color(0xffe8620a), width: 2),
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                    backgroundColor: _boxi,
                  ),
                  child: Icon(
                    Icons.app_registration_rounded,
                    color: _chboxi,
                    size: 20,
                  ),
                ),
                OutlinedButton(
                  onPressed: () {
                    print("آیکون کلیک شد");
                  },
                  onHover: (hovering) {
                    if (hovering) {
                      _colorse();
                    } else {
                      setState(() {
                        _boxie = Colors.white;
                        _chboxie = Color(0xffe8620a);
                      });
                    }
                  },
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Color(0xffe8620a), width: 2),
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                    backgroundColor: _chboxie,
                  ),
                  child: Icon(
                    Icons.person_2_outlined,
                    color: _boxie,
                    size: 20,
                  ),
                ),
                OutlinedButton(
                  onPressed: () {
                    print("آیکون کلیک شد");
                  },
                  child: DropdownButton<String>(
                    value: _selectedOption,
                    hint: const Text('EN'),
                    items: _options.map((String option) {
                      return DropdownMenuItem<String>(
                        value: option,
                        child: Text(option,
                            style: TextStyle(color: Color(0xffe8620a))),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        _selectedOption = newValue;
                      });
                    },
                  ),
                ),
              ],
            ),
          ],
          elevation: 14,
          backgroundColor: Colors.white,
          shadowColor: Color(0xffe8620a),
          foregroundColor: Colors.white,
        ),
        body: Column(
          children: [
            SizedBox(
              height: 40,
              width: double.infinity, // عرض به اندازه صفحه
            ),
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.center, // مرکز چین کردن متن‌ها
              children: [
                Text("D",
                    style: TextStyle(color: Color(0xff042255), fontSize: 35)),
                Text("ream",
                    style: TextStyle(color: Color(0xffe8620a), fontSize: 30)),
                SizedBox(width: 10), // فاصله بین کلمات
                Text("O",
                    style: TextStyle(color: Color(0xff042255), fontSize: 35)),
                Text("n",
                    style: TextStyle(color: Color(0xffe8620a), fontSize: 30)),
                SizedBox(width: 10), // فاصله بین کلمات
                Text("L",
                    style: TextStyle(color: Color(0xff042255), fontSize: 35)),
                Text("ive",
                    style: TextStyle(color: Color(0xffe8620a), fontSize: 30)),
                SizedBox(width: 10), // فاصله بین کلمات
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 150,
                ),
                Text("M",
                    style: TextStyle(color: Color(0xff042255), fontSize: 35)),
                Text("ore",
                    style: TextStyle(color: Color(0xffe8620a), fontSize: 30)),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 100,
                ),
                Text("A",
                    style: TextStyle(color: Color(0xff042255), fontSize: 35)),
                Text("dventures",
                    style: TextStyle(color: Color(0xffe8620a), fontSize: 30)),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    OutlinedButton(
                        onPressed: () {
                          print("آیکون کلیک شد");
                        },
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Color(0xffe8620a), width: 2),
                          padding:
                              EdgeInsets.symmetric(vertical: 6, horizontal: 6),
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(30), // 👈 مربع کامل
                          ),
                        ),
                        child: Image.asset(
                          "assets/beauty-min-new.png",
                          width: 80,
                          height: 80,
                        )),
                    SizedBox(
                      height: 17,
                    ),
                    Text("Beauty")
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    OutlinedButton(
                        onPressed: () {
                          print("آیکون کلیک شد");
                        },
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Color(0xffe8620a), width: 2),
                          padding:
                              EdgeInsets.symmetric(vertical: 6, horizontal: 6),
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(30), // 👈 مربع کامل
                          ),
                        ),
                        child: Image.asset(
                          "assets/cinema-min.png",
                          width: 80,
                          height: 80,
                        )),
                    SizedBox(
                      height: 17,
                    ),
                    Text("Cinema&Theater")
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    OutlinedButton(
                        onPressed: () {
                          print("آیکون کلیک شد");
                        },
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Color(0xffe8620a), width: 2),
                          padding:
                              EdgeInsets.symmetric(vertical: 6, horizontal: 6),
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(30), // 👈 مربع کامل
                          ),
                        ),
                        child: Image.asset(
                          "assets/clubs-min.png",
                          width: 80,
                          height: 80,
                        )),
                    SizedBox(
                      height: 17,
                    ),
                    Text("Clubs")
                  ],
                )
              ],
            ),
            SizedBox(
              height: 2,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    OutlinedButton(
                        onPressed: () {
                          print("آیکون کلیک شد");
                        },
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Color(0xffe8620a), width: 2),
                          padding:
                              EdgeInsets.symmetric(vertical: 6, horizontal: 6),
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(30), // 👈 مربع کامل
                          ),
                        ),
                        child: Image.asset(
                          "assets/party-min.png",
                          width: 80,
                          height: 80,
                        )),
                    SizedBox(
                      height: 17,
                    ),
                    Text("Event&Party")
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    OutlinedButton(
                        onPressed: () {
                          print("آیکون کلیک شد");
                        },
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Color(0xffe8620a), width: 2),
                          padding:
                              EdgeInsets.symmetric(vertical: 6, horizontal: 6),
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(30), // 👈 مربع کامل
                          ),
                        ),
                        child: Image.asset(
                          "assets/food-min.png",
                          width: 80,
                          height: 80,
                        )),
                    SizedBox(
                      height: 17,
                    ),
                    Text("Food")
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    OutlinedButton(
                        onPressed: () {
                          print("آیکون کلیک شد");
                        },
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Color(0xffe8620a), width: 2),
                          padding:
                              EdgeInsets.symmetric(vertical: 6, horizontal: 6),
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(30), // 👈 مربع کامل
                          ),
                        ),
                        child: Image.asset(
                          "assets/health-min.png",
                          width: 80,
                          height: 80,
                        )),
                    SizedBox(
                      height: 17,
                    ),
                    Text("Health&Wellness")
                  ],
                )
              ],
            ),
            SizedBox(
              height: 2,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    OutlinedButton(
                        onPressed: () {
                          print("آیکون کلیک شد");
                        },
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Color(0xffe8620a), width: 2),
                          padding:
                              EdgeInsets.symmetric(vertical: 6, horizontal: 6),
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(30), // 👈 مربع کامل
                          ),
                        ),
                        child: Image.asset(
                          "assets/hotel-min.png",
                          width: 80,
                          height: 80,
                        )),
                    SizedBox(
                      height: 17,
                    ),
                    Text("Hotels&Hostels")
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    OutlinedButton(
                        onPressed: () {
                          print("آیکون کلیک شد");
                        },
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Color(0xffe8620a), width: 2),
                          padding:
                              EdgeInsets.symmetric(vertical: 6, horizontal: 6),
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(30), // 👈 مربع کامل
                          ),
                        ),
                        child: Image.asset(
                          "assets/services-min.png",
                          width: 80,
                          height: 80,
                        )),
                    SizedBox(
                      height: 17,
                    ),
                    Text("Services")
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    OutlinedButton(
                        onPressed: () {
                          print("آیکون کلیک شد");
                        },
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Color(0xffe8620a), width: 2),
                          padding:
                              EdgeInsets.symmetric(vertical: 6, horizontal: 6),
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(30), // 👈 مربع کامل
                          ),
                        ),
                        child: Image.asset(
                          "assets/sports-min.png",
                          width: 80,
                          height: 80,
                        )),
                    SizedBox(
                      height: 17,
                    ),
                    Text("Sports")
                  ],
                )
              ],
            )
          ],
        ));
  }
}
