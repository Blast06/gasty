


import 'package:gasty/app/controllers/DetailPageController.dart';
import 'package:gasty/app/controllers/HomePageController.dart';
import 'package:get/get.dart';

class DependencyInjector {
  
  static void init(){

    // Get.lazyPut(() => HomePageController,fenix: true);
    // Get.lazyPut(() => DetailPageController,fenix: true);

    Get.put<HomePageController>(HomePageController());
    Get.put<DetailPageController>(DetailPageController());

    //BUSCAR DIFERENCIAS DE PUT Y LAZYPUT
    
  }
}