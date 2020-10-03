import 'package:flutter/material.dart';
import 'package:gasty/app/data/models/Politician.dart';
import 'package:gasty/app/data/services/mock_data.dart';
import 'package:gasty/app/ui/pages/DetailPage.dart';
import 'package:gasty/app/ui/theme/app_theme.dart';
import 'package:get/get.dart';

class Card4 extends StatelessWidget {
  const Card4({
    Key key,
    @required this.height,
    @required this.politician,
    @required this.index,
  }) : super(key: key);

  final double height;
  final List<Politician> politician;

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4.0),
      height: height * 0.19,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            child: Container(
              height: height * 0.162,
              width: Get.width,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        // Color.fromRGBO(6, 214, 160, 1),
                        Color(0xFF133b5c), 
                        Color(0xFF133b5c), 
                      ]),
                  borderRadius: BorderRadius.circular(8)),
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: height * 0.162 + 16,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            politicians[index].name,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Poppins-Medium",
                                fontWeight: FontWeight.bold,
                                fontSize:
                                    Get.width * 0.04),
                          ),
                          Text(
                            politicians[index].spot,
                            style: TextStyle(
                                color: Colors.white60,
                                fontFamily: "Poppins-Light",
                                fontSize:
                                    Get.width * 0.033),
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                "⭐ ${politicians[index].party}",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w200,
                                    fontFamily: "Poppins-Semibold",
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.033),
                              ),
                              SizedBox(
                                child: Text(
                                  "  |  ",
                                  style: TextStyle(
                                      color: Colors.white24,
                                      fontWeight: FontWeight.w100,
                                      fontFamily: "Poppins-Light",
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.03),
                                ),
                              ),
                              Text(
                                " ${politicians[index].netWorth}",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w200,
                                    fontFamily: "Poppins-Light",
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.033),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 16,
            top: 0,
            height: height * 0.19,
            width: height * 0.16,
            child: InkWell(
              onTap: () {
                Get.to(DetailPage());
              },
              child: Hero(
                tag: politicians[index].id,
                child: Container(
                  alignment: Alignment.centerRight,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: 
                         Image.network(
                            politicians[index].image,
                            fit: BoxFit.cover)
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
