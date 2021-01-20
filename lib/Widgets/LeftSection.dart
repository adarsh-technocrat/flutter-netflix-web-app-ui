import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_web_app/models/seasions_models.dart';

class LeftSection extends StatefulWidget {
  @override
  _LeftSectionState createState() => _LeftSectionState();
}

class _LeftSectionState extends State<LeftSection> {
  int _currentindex = 0;
  CarouselController buttonCarouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.only(left: 70, top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Color(0xffffb800),
                    size: 25,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text("8.8",
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ))
                ],
              ),
              Text(
                "Stranger\nThings",
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 60,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Text(
                  "Stranger Things is an American science fiction horror mystery-thriller \nstreaming television series created by the Duffer Brothers and released on \nNetflix. The brothers serve as showrunners and are executive producers \nalong with Shawn Levy and Dan Cohen. The series premiered on Netflix \non July 15, 2016.",
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w300,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 150,
                child: CarouselSlider(
                  items: seasion.map((item) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Stack(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(color: Colors.black),
                                child: Image.asset(
                                  item.images,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Positioned(
                                  left: 10,
                                  bottom: 10,
                                  child: Text(item.title,
                                      style: GoogleFonts.roboto(
                                        textStyle: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ))),
                              Container(
                                color: Colors.black.withOpacity(0.5),
                              ),
                              Positioned(
                                left: 0,
                                right: 0,
                                bottom: 0,
                                top: 0,
                                child: IconButton(
                                    color: Colors.black,
                                    icon: Icon(
                                      Icons.play_arrow,
                                      color: Colors.white,
                                      size: 40,
                                    ),
                                    onPressed: () {}),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  }).toList(),
                  carouselController: buttonCarouselController,
                  options: CarouselOptions(
                      autoPlay: true,
                      enlargeCenterPage: true,
                      viewportFraction: 0.5,
                      aspectRatio: 1,
                      initialPage: 0,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _currentindex = index;
                          print(_currentindex);
                        });
                      }),
                ),
              ),
              Expanded(child: Container()),
              Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: FlatButton(
                        padding: EdgeInsets.symmetric(
                          horizontal: 95,
                          vertical: 20,
                        ),
                        color: Color(0xffC50000),
                        onPressed: () {},
                        child: Row(
                          children: [
                            Text(
                              "Watch Now",
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.transparent,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.8),
                                      blurRadius: 5,
                                    )
                                  ]),
                              child: Center(
                                child: Icon(
                                  Icons.play_arrow,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: FlatButton(
                        padding: EdgeInsets.symmetric(
                          horizontal: 80,
                          vertical: 15,
                        ),
                        color: Color(0xffffffff),
                        onPressed: () {},
                        child: Row(
                          children: [
                            IconButton(
                              padding: EdgeInsets.zero,
                              icon: Icon(Icons.add, color: Colors.black),
                              onPressed: () {},
                            ),
                            Text(
                              "My Favourites",
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Color(0xff5B5B5B).withOpacity(0.5),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 2,
                      color: Color(0xffffffff),
                    )
                  ],
                ),
                child: Center(
                  child: Text("16+",
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                        ),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
