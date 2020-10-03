import 'package:flutter/material.dart';

import 'Tab_widget.dart';



Widget tabBar() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          tab(0, "PLD" ),
          tab(1, "PRM"),
          tab(2, "LFP"),
          tab(3, "PRD"),
          tab(4, "PRSC"),
          
        ],
      ),
    );
  }