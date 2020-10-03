import 'package:flutter/material.dart';


  Widget appBar(width) {
    
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            Text(
              "Gasty",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: width * 0.08,
                  fontFamily: "Poppins-Bold",
                  fontWeight: FontWeight.w600),
            ),
            Text(
              ".",
              style: TextStyle(
                color: Colors.redAccent,
                fontSize: width * 0.08,
                fontFamily: "Poppins-Bold",
              ),
            ),
          ],
        ),
      ],
    );
  }