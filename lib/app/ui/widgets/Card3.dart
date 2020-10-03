import 'package:flutter/material.dart';

const TextStyle dropDownTextStyle =
      TextStyle(color: Colors.white, fontSize: 16.0);
  const TextStyle dropDownMenuStyle =
      TextStyle(color: Colors.black, fontSize: 16.0);

class CityCard extends StatelessWidget {
  Color firstColor = Color(0xFFFF6900); // #FF6900
  Color secondColor = Color(0xFFFF6500); // #FF6500

  List<String> locations = ['Boston (BOS)', 'New york (JFK)'];
  

  final String imagePath, cityName, monthYear, discount, oldPrice, newPrice;

   CityCard(
      {this.imagePath,
      this.cityName,
      this.monthYear,
      this.discount,
      this.oldPrice,
      this.newPrice});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(2.0),
                  height: 210.0,
                  width: 150.0,
                  child: Image.asset(this.imagePath, fit: BoxFit.cover),
                ),
                Positioned(
                  left: 0.0,
                  bottom: 0.0,
                  width: 160.0,
                  height: 50.0,
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [Colors.black, Colors.black12])),
                  ),
                ),
                Positioned(
                  left: 10.0,
                  bottom: 10.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        cityName,
                        style: dropDownTextStyle.copyWith(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: <Widget>[
                          Text(monthYear,
                              style: dropDownTextStyle.copyWith(
                                  fontSize: 14.0, color: Colors.grey[300])),
                          SizedBox(width: 30.0),
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 4.0, horizontal: 8.0),
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0)),
                              color: Colors.white.withOpacity(0.95),
                            ),
                            child: Text(
                              "$discount%",
                              style: dropDownMenuStyle.copyWith(
                                  fontSize: 12.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 50.0),
            child: Row(
              children: <Widget>[
                Text(
                  "\$$newPrice",
                  style: TextStyle(
                    fontSize: 16.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "(\$$oldPrice)",
                  style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.normal,
                      decoration: TextDecoration.lineThrough,
                      color: Colors.grey[400]),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
