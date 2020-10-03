import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:gasty/app/controllers/HomePageController.dart';
import 'package:gasty/app/data/services/mock_data.dart';
import 'package:gasty/app/ui/theme/app_theme.dart';
import 'package:gasty/app/ui/widgets/Appbar_widget.dart';
import 'package:gasty/app/ui/widgets/Card4.dart';
import 'package:gasty/app/ui/widgets/Tabbar_widget.dart';

import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

class HomePage extends GetView<HomePageController> {
  @override
  Widget build(BuildContext context) {
  
    final height = Get.height;
     FlutterStatusbarcolor.setStatusBarColor(appThemeData.primaryColor);

    // return Scaffold(
    //   backgroundColor: Color.fromRGBO(222, 226, 230, 1),
    //   appBar: AppBar(
    //     centerTitle: true,
    //     title: Text('Titulo'),
    //   ),
    //   body: ListView.separated(
    //       shrinkWrap: true,
    //       separatorBuilder: (context, index) => Divider(
    //             color: Colors.transparent,
    //           ),
    //       itemCount: politicians.length,
    //       itemBuilder: (BuildContext context, int index) {
    //         return Card4(height: height, politician: politicians, index: index);6
    //       }),
    // );
     int offset = 0;
     int time;

    return Scaffold(
      backgroundColor: appThemeData.backgroundColor,
      body: SafeArea(
      bottom: false,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            appBar(Get.width),
            tabBar(),
            SizedBox(
              height: 16,
            ),
            Expanded(
              child: ListView.separated(
                  shrinkWrap: true,
                  separatorBuilder: (context, index) => Divider(
                        color: Colors.transparent,
                      ),
                  itemCount: politicians.length,
                  itemBuilder: (BuildContext context, int index) {
                     offset += 10;
                     time = 800 + offset;
                    Future.delayed(Duration(seconds:3));
                    return Card4(height: height, politician: politicians, index: index);
                  }),
            )
          ],
        ),
      ),
    ),
    );

   
  }
}


// Shimmer.fromColors(
//           period: Duration(milliseconds: time),
//           highlightColor: appThemeData.backgroundColor,
//           baseColor: appThemeData.accentColor,
//           child: Container(
//             margin: EdgeInsets.all(4.0),
//             height: Get.height * 0.19,
//             child: Stack(
//               alignment: Alignment.center,
//               children: <Widget>[
//                 Positioned(
//                   child: Container(
//                     height: Get.height * 0.16,
//                     width: Get.width,
//                     decoration: BoxDecoration(
//                         color: Color(0xFF333333),
//                         borderRadius: BorderRadius.circular(12)),
//                   ),
//                 ),
//                 Positioned(
//                   left: 16,
//                   top: 0,
//                   height: Get.height * 0.19,
//                   width: Get.height * 0.16,
//                   child: Container(
//                     width: 145,
//                     alignment: Alignment.centerRight,
//                     decoration: BoxDecoration(
//                         color: Color(0xFF333333),
//                         borderRadius: BorderRadius.circular(12)),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );