import 'dart:math';

import 'package:flutter/material.dart';

class Card2 extends StatelessWidget {
  final int index;
  

  Card2(this.index);
  final String img =
      'https://images.squarespace-cdn.com/content/v1/5a0dd6831f318dcf5130a0d5/1552963276197-5WSNM8UUM1D3283BWCYV/ke17ZwdGBToddI8pDm48kIELqAqcW0AtxUzoqUPFn3oUqsxRUqqbr1mOJYKfIPR7LoDQ9mXPOjoJoqy81S2I8PaoYXhp6HxIwZIk7-Mi3Tsic-L2IOPH3Dwrhl-Ne3Z2Pb5Bx8K6uU9PJvuQRN6GclRs8mmoAXPMWhix3Kqr80ubtxPRH917Fz9Qv_NunPol/angela+davis?format=300w';
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.network(
            img,
            width: 60,
          ),
          Text('Object', style: TextStyle(fontWeight: FontWeight.bold),),
          Text("15", style: TextStyle(color: Color.fromRGBO(6, 214, 160, 1),),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(222, 226, 230, 1),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                ),
                margin: EdgeInsets.all(3.0),
                child: IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: () {},
                ),
              ),
              Text(
                '$index',
                style: TextStyle(color: Colors.black87),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color.fromRGBO(6, 214, 160, 1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(5.0),
                    )),
                margin: EdgeInsets.all(3.0),
                child: IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
      width: 150,
      height: 150,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(5.0)),
    );
  }
}
