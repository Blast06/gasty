import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gasty/app/controllers/HomePageController.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomePageController> {
  @override
  Widget build(BuildContext context) {
    final List<Color> colores = [
      Colors.red,
      Colors.black,
      Colors.amberAccent,
      Colors.blue,
      Colors.cyan,
      Colors.deepOrange,
      Colors.green,
      Colors.greenAccent,
      Colors.indigo,
      Colors.indigoAccent,
      Colors.redAccent,
    ];

    Random random = Random();
    final String img =
        'https://images.squarespace-cdn.com/content/v1/5a0dd6831f318dcf5130a0d5/1552963276197-5WSNM8UUM1D3283BWCYV/ke17ZwdGBToddI8pDm48kIELqAqcW0AtxUzoqUPFn3oUqsxRUqqbr1mOJYKfIPR7LoDQ9mXPOjoJoqy81S2I8PaoYXhp6HxIwZIk7-Mi3Tsic-L2IOPH3Dwrhl-Ne3Z2Pb5Bx8K6uU9PJvuQRN6GclRs8mmoAXPMWhix3Kqr80ubtxPRH917Fz9Qv_NunPol/angela+davis?format=300w';
    final List<Widget> items = List.generate(
        100,
        (index) => Container(
              width: double.infinity,
              height: 150,
              color: colores[random.nextInt(colores.length)],
            ));

    return Scaffold(
      body: CustomScrollView(slivers: <Widget>[
        SliverAppBar(
          elevation: 2.0,
          backgroundColor: Colors.amberAccent,
          pinned: true,
          expandedHeight: 200,
          // centerTitle: true,
          // toolbarHeight: 200,
          floating: true,
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(width: 0.0, height: 50),
                Container(
                  child: CircleAvatar(
                    radius: 45,
                    backgroundColor: Colors.white24,
                    child: CircleAvatar(
                      radius: 45,
                      backgroundImage: NetworkImage(
                        img,
                      ),
                    ),
                  ),
                ),
                // Text('Spend Bill Gates Money'),
                // Text("1,0000,0000"),
              ],
            ),
          ),
        ),
        SliverList(delegate: SliverChildListDelegate(items))
      ]),
    );
  }
}
