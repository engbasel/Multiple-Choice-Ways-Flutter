import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(myapp());
}

class myapp extends StatefulWidget {
  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  bool Dart = false;
  bool kotlin = false;
  bool C_Sharp = false;
  bool Java = false;
  String Dart_LUG = 'Dart';
  String kotlin_Lung = 'kotlin';
  String C_LUNG = 'C';
  String Java_LUNG = 'Java';
  String num_ONE = 'First  Year';
  String num_TWO = 'Second Year';
  String num_Three = 'Third Year';
  String num_four = 'Fourth Year';
  int duration_Time = 2;
  dynamic YourLevel;
  GlobalKey<ScaffoldState> scaffoldKEY = new GlobalKey<ScaffoldState>();
  void TEST() {
    print('object');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        key: scaffoldKEY,
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          title: Center(
            child: Text(
              'Task',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "What's your grade?",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: RadioListTile(
                            title: Text(
                              'First Year',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            value: 'First',
                            groupValue: YourLevel,
                            onChanged: (Changed_value) {
                              setState(
                                () {
                                  var snackbar = SnackBar(
                                    behavior: SnackBarBehavior.floating,
                                    action: SnackBarAction(
                                      label: 'Close',
                                      textColor: Colors.black,
                                      onPressed: () {},
                                    ),
                                    margin: EdgeInsets.all(10.0),
                                    padding: EdgeInsets.all(10.0),
                                    content: Text("you aleady choose $num_ONE"),
                                    duration: Duration(seconds: duration_Time),
                                    backgroundColor: Colors.greenAccent,
                                  );
                                  scaffoldKEY.currentState!
                                      .showSnackBar(snackbar);
                                  YourLevel = Changed_value;
                                },
                              );
                            },
                          ),
                        ),
                        Expanded(
                          child: RadioListTile(
                            title: Text(
                              'Second Year',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            value: 'Second Year',
                            groupValue: YourLevel,
                            onChanged: (Changed_value) {
                              setState(
                                () {
                                  var snackbar = SnackBar(
                                    behavior: SnackBarBehavior.floating,
                                    action: SnackBarAction(
                                      label: 'Close',
                                      textColor: Colors.black,
                                      onPressed: () {},
                                    ),
                                    margin: EdgeInsets.all(10.0),
                                    padding: EdgeInsets.all(10.0),
                                    content: Text("you aleady choose $num_TWO"),
                                    duration: Duration(seconds: duration_Time),
                                    backgroundColor: Colors.greenAccent,
                                  );
                                  scaffoldKEY.currentState!
                                      .showSnackBar(snackbar);
                                  YourLevel = Changed_value;
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: RadioListTile(
                            title: Text(
                              'Third Year',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            value: 'Third Year',
                            groupValue: YourLevel,
                            onChanged: (Changed_value) {
                              setState(
                                () {
                                  var snackbar = SnackBar(
                                    behavior: SnackBarBehavior.floating,
                                    action: SnackBarAction(
                                      label: 'Close',
                                      textColor: Colors.black,
                                      onPressed: () {},
                                    ),
                                    margin: EdgeInsets.all(10.0),
                                    padding: EdgeInsets.all(10.0),
                                    content:
                                        Text("you aleady choose $num_Three"),
                                    duration: Duration(seconds: duration_Time),
                                    backgroundColor: Colors.greenAccent,
                                  );
                                  scaffoldKEY.currentState!
                                      .showSnackBar(snackbar);
                                  YourLevel = Changed_value;
                                },
                              );
                            },
                          ),
                        ),
                        Expanded(
                          child: RadioListTile(
                            title: Text(
                              'Fourth Year',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            value: 'Fourth Year',
                            groupValue: YourLevel,
                            onChanged: (Changed_value) {
                              setState(
                                () {
                                  var snackbar = SnackBar(
                                    behavior: SnackBarBehavior.floating,
                                    action: SnackBarAction(
                                      label: 'Close',
                                      textColor: Colors.black,
                                      onPressed: () {},
                                    ),
                                    margin: EdgeInsets.all(10.0),
                                    padding: EdgeInsets.all(10.0),
                                    content:
                                        Text("you aleady choose $num_four"),
                                    duration: Duration(seconds: duration_Time),
                                    backgroundColor: Colors.greenAccent,
                                  );
                                  scaffoldKEY.currentState!
                                      .showSnackBar(snackbar);
                                  YourLevel = Changed_value;
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(
                  thickness: 4.0,
                  color: Colors.black,
                  indent: 20.0,
                  endIndent: 20.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        "Which programming language do you use?",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: Dart,
                          activeColor: Color.fromARGB(255, 7, 39, 88),
                          onChanged: (DartChangedValue) {
                            setState(
                              () {
                                Dart = DartChangedValue!;
                              },
                            );
                          },
                        ),
                        Text(
                          // Dart
                          "$Dart_LUG",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        Checkbox(
                          value: kotlin,
                          activeColor: Color.fromARGB(255, 7, 39, 88),
                          onChanged: (KotlienChangedValue) {
                            setState(
                              () {
                                kotlin = KotlienChangedValue!;
                              },
                            );
                          },
                        ),
                        Text(
                          '$kotlin_Lung',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(
                          flex: 1,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          activeColor: Color.fromARGB(255, 7, 39, 88),
                          value: Java,
                          onChanged: (javaValue) {
                            setState(
                              () {
                                Java = javaValue!;
                              },
                            );
                          },
                        ),
                        Text(
                          "$C_LUNG   ",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        Checkbox(
                          activeColor: Color.fromARGB(255, 7, 39, 88),
                          value: C_Sharp,
                          onChanged: (C_Value) {
                            setState(
                              () {
                                C_Sharp = C_Value!;
                              },
                            );
                          },
                        ),
                        Text(
                          '$Java_LUNG',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(
                          flex: 1,
                        ),
                      ],
                    )
                  ],
                ),
                Divider(
                  thickness: 4.0,
                  color: Colors.black,
                  indent: 20.0,
                  endIndent: 20.0,
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (Dart == true)
                          Text(
                            'Dart',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        if (kotlin == true)
                          Text(
                            'Kotlin',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        if (Java == true)
                          Text(
                            'C',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        if (C_Sharp == true)
                          Text(
                            'Java',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.black38,
                  ),
                  width: 500.0,
                  height: 500.0,
                ),
                Divider(
                  thickness: 4.0,
                  color: Colors.black,
                  indent: 20.0,
                  endIndent: 20.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
