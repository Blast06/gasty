import 'package:flutter/material.dart';
import 'package:gasty/app/ui/pages/DetailPage.dart';
import 'package:gasty/app/ui/pages/HomePage.dart';
import 'package:gasty/app/ui/theme/app_theme.dart';
import 'package:gasty/app/utils.dart/dependency_injector.dart';
import 'package:gasty/main2.dart';
import 'package:get/get.dart';

void main() {
  DependencyInjector.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Gasty',
      theme: appThemeData,
      home: HomePage(),
    );
  }
}

