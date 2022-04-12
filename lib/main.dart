import 'package:flutter/material.dart';
import 'package:flutter_application_1/injector/injector.dart';
import 'package:flutter_application_1/pages/home.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Get-x',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      debugShowCheckedModeBanner: false,
      initialBinding: Injector(),
      home: Home(),
    );
  }
}
