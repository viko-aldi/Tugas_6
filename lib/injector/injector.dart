import 'package:flutter_application_1/controller/home_controller.dart';
import 'package:flutter_application_1/repository/movie_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Injector extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => MovieRepository());
    // TODO: implement dependencies
  }
}
