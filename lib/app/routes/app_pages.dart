



import 'package:gasty/app/ui/pages/DetailPage.dart';
import 'package:gasty/app/ui/pages/HomePage.dart';
import 'package:gasty/app/ui/pages/InfoPage.dart';
import 'package:gasty/app/ui/pages/LoginPage.dart';
import 'package:get/get.dart';
part './app_routes.dart';

abstract class AppPages {

  static final pages = [
    GetPage(name: Routes.INITIAL, page:()=> HomePage(),),
    GetPage(name: Routes.LOGIN, page:()=> LoginPage()),
    GetPage(name: Routes.INFO, page:()=> InfoPage()),
    GetPage(name: Routes.DETAIL_PAGE, page:()=> DetailPage()),

  ];
}