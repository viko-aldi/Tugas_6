import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_screen.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  var selectedIndex;

  Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _currentIndex;
    return Scaffold(
        // appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/gambar.png'),
              Text(
                "THE MOVIE",
              ),
              ElevatedButton(
                  onPressed: () {
                    Get.to(() => HomeScreen());
                  },
                  child: const Text(
                    "Jelajahi",
                  )),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.to(() => HomeScreen());
          },
        ));
  }
}
