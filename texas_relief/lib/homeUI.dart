import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:texas_relief/authentication_service.dart';

import 'griddashboard (1).dart';

class HomeState extends StatelessWidget {
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
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Stack(
        children: [
          Container(
            child: Image(
              image: AssetImage("assets/images/sky.png"),
              fit: BoxFit.cover,
            ),
            height: height3 / 1.5,
            width: width,
          ),
          Column(
            children: <Widget>[
              SizedBox(
                height: 60,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Texas Relief",
                          style: GoogleFonts.openSans(
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold)),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Home",
                          style: GoogleFonts.openSans(
                              textStyle: TextStyle(
                                  color: Color(0xffa29aac),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ],
                    ),
                    IconButton(
                      alignment: Alignment.topCenter,
                      icon: Image.asset(
                        "assets/images/setting.png",
                        width: 80,
                        //color: Colors.whpurpte,
                      ),
                      onPressed: () {
                        context.read<AuthenticationService>().signOut();
                      },
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              GridDashboard()
            ],
          ),
        ],
      ),
    );
  }
}
