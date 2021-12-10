import 'package:app2/ui2.dart';
import 'package:app2/ui3.dart';
import 'package:app2/ui4.dart';
import 'package:app2/ui5.dart';
import 'package:app2/ui6.dart';
import 'package:flutter/material.dart';
import './ui1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FirstThree",
      home: HomeOne(),
    );
  }
}
