import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gasty/app/controllers/DetailPageController.dart';
import 'package:gasty/app/ui/theme/app_theme.dart';
import 'package:gasty/app/ui/widgets/Card2_widget.dart';
import 'package:gasty/app/ui/widgets/Card3.dart';
import 'package:gasty/main2.dart';
import 'package:get/get.dart';






class DetailPage extends GetView<DetailPageController> {
  @override
  Widget build(BuildContext context) {
    
    
 

    Random random = Random();
    final String img =
        'https://images.squarespace-cdn.com/content/v1/5a0dd6831f318dcf5130a0d5/1552963276197-5WSNM8UUM1D3283BWCYV/ke17ZwdGBToddI8pDm48kIELqAqcW0AtxUzoqUPFn3oUqsxRUqqbr1mOJYKfIPR7LoDQ9mXPOjoJoqy81S2I8PaoYXhp6HxIwZIk7-Mi3Tsic-L2IOPH3Dwrhl-Ne3Z2Pb5Bx8K6uU9PJvuQRN6GclRs8mmoAXPMWhix3Kqr80ubtxPRH917Fz9Qv_NunPol/angela+davis?format=300w';




    final List<Widget> items = List.generate(21, (i) => Card2(i));

    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 226, 230,1),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            elevation: 2.0,
            backgroundColor: appThemeData.backgroundColor,
            expandedHeight: 200.0,
            floating: true,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)), //TODO poner esto dentro del container
                    child: Container(
                      color: appThemeData.accentColor,
                      child: Text('Gonzalo',style: TextStyle(color: Colors.white),),
                    ),
                  ),
                  Text(
                    '500,000',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.white, fontSize: 16.0),
                  ),
                ],
              ),
              background: CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 55,
                child: CircleAvatar(
                  radius: 55,
                  backgroundImage: NetworkImage(img),
                ),
              ),
            ),
          ),
          // SliverList(
          //   delegate: SliverChildBuilderDelegate((context, i) {
          //     return items[i];
          //   }, childCount: items.length),
          // ),
          SliverGrid.count(crossAxisCount: 2, children: items,)
        ],
      ),
    );
  }
}