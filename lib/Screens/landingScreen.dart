import 'package:flutter/material.dart';
import 'package:netflix_web_app/Widgets/BuildNavBar.dart';
import 'package:netflix_web_app/Widgets/LeftSection.dart';
import 'package:netflix_web_app/Widgets/rightSection.dart';

class LandingScreen extends StatefulWidget {
  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              "assets/pic.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.5),
            child: Column(
              children: [
                BuildNavBar(),
                Expanded(
                  child: Row(
                    children: [
                      LeftSection(),
                      RightSection(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
