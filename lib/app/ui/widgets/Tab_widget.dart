import 'package:flutter/material.dart';
import 'package:gasty/app/controllers/HomePageController.dart';
import 'package:gasty/app/ui/theme/app_theme.dart';
import 'package:get/get.dart';


Widget tab(int index, String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 16),
      child: InkWell(
        onTap: () {
        Get.find<HomePageController>().activeIndex.value = index;
        },
        child: Obx( () => Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color:
                  Get.find<HomePageController>().activeIndex.value == index ? appThemeData.primaryColor : appThemeData.accentColor), //TODO: USE GETX TO CHANGE THE DATA, OBX
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 18.0),
            child: Text(
              title,
              style: TextStyle(
                fontSize: Get.width * 0.035,
                letterSpacing: 0.5,
                fontWeight: FontWeight.w600,
                fontFamily: "Poppins-Light",
                color: Colors.white,
              ),
            ),
          ),
        ),),
      ),
    );
  }