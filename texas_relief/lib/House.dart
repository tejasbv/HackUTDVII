import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class House extends StatelessWidget {
  var list = {
    0: [
      "Information:",
      "Due to loss of property value for many Texans, housing grants are becoming more and more essential during the disaster. Thousands of down payment assistance services are readily available for homebuyers."
    ],
    1: [
      "More Information:",
      " The Texas Department of Housing and Community Affairs (TDHCA) is very valuable to first time homebuyers for budget friendly plans. The Veteran's Land Board is useful to veterans."
    ],
    2: [
      "Down Payment Assistance:",
      "https://txhomenow.org/programs/texas-homebuyers-grant/"
    ],
    3: [
      "The Texas Department of Housing and Community Affairs:",
      "https://www.tdhca.state.tx.us/"
    ],
    4: [
      "First Time Buyer Grants:",
      "https://www.tsahc.org/homebuyers-renters/first-time-home-buyer-grants"
    ],
    5: ["The Vetaran's Land Board:", "https://vlb.texas.gov/"],
  };
  @override
  Widget build(BuildContext context) {
    /**********************************************************/
    // full screen width and height
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    var padding = MediaQuery.of(context).padding;
    // height without status and toolbar
    double height3 = (height - kToolbarHeight) / 2;
    double boxw = height > width ? width : height - 50;
    /**********************************************************/
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
          color: Colors.blue[700],
          gradient: LinearGradient(begin: Alignment.topCenter, colors: [
            Colors.red[700],
            Colors.red[500],
            Colors.red[400],
          ])),
      // borderRadius: BorderRadius.only(
      //     topLeft: Radius.circular(60),
      //     topRight: Radius.circular(60))),
      //height: ,
      width: width - 20,
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Swiper(
        itemCount: list.length,
        itemWidth: MediaQuery.of(context).size.width,
        layout: SwiperLayout.STACK,
        pagination: SwiperPagination(
          builder: DotSwiperPaginationBuilder(activeSize: 20, space: 8),
        ),
        itemBuilder: (context, index) {
          return Stack(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: width - 20,
                    height: height / 1.5,
                    child: Card(
                      elevation: 8,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32),
                      ),
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(32.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: 50,
                            ),
                            Divider(
                              color: Colors.black,
                              thickness: 5,
                            ),
                            SizedBox(height: 10),
                            Text(
                              list[index][0],
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 44,
                                color: const Color(0xff47455f),
                                fontWeight: FontWeight.w900,
                              ),
                              textAlign: TextAlign.left,
                              maxLines: 4,
                              // overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              list[index][1],
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 23,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            // SizedBox(height: 32),
                            // TextButton(
                            //   onPressed: () {
                            //     Navigator.push(
                            //         context,
                            //         PageRouteBuilder(
                            //             pageBuilder: (context, a, b) =>
                            //                 DetailPage(
                            //                   _newsinfo[index],
                            //                 )));
                            //   },
                            //   child: Row(
                            //     children: <Widget>[
                            //       Text(
                            //         'Read more',
                            //         style: TextStyle(
                            //           fontFamily: 'Avenir',
                            //           fontSize: 18,
                            //           color: Color(0xFFE4979E),
                            //           fontWeight: FontWeight.w500,
                            //         ),
                            //         textAlign: TextAlign.left,
                            //       ),
                            //       Icon(
                            //         Icons.arrow_forward,
                            //         color: Color(0xFFE4979E),
                            //       ),
                            //     ],
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // Hero(
              //   //tag: planets[index].position,
              //   child: Image.network(_newsinfo[index].imageURL),
              // ),
              // Positioned(
              //   right: 24,
              //   bottom: 60,
              //   child: Text(
              //     _newsinfo[index].position.toString(),
              //     style: TextStyle(
              //       fontFamily: 'Avenir',
              //       fontSize: 200,
              //       color: primaryTextColor.withOpacity(0.08),
              //       fontWeight: FontWeight.w900,
              //     ),
              //     textAlign: TextAlign.left,
              //   ),
              // ),
            ],
          );
        },
      ),
    );
  }
}
