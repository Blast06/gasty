import 'package:flutter/material.dart';



Widget txtGeners(context, List<String> strings) {
  List<Widget> list = new List<Widget>();
  for (var i = 0; i < strings.length; i++) {
    list.add(new Text(
      strings[i],
      style: TextStyle(
          color: Colors.white60,
          fontFamily: "Poppins-Light",
          fontSize: MediaQuery.of(context).size.width * 0.033),
    ));
  }
  return new Wrap(runSpacing: 2, spacing: 4, children: list);
}