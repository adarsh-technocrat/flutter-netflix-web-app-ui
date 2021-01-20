import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_web_app/models/actors_model.dart';

class RightSection extends StatefulWidget {
  @override
  _RightSectionState createState() => _RightSectionState();
}

class _RightSectionState extends State<RightSection> {
  int _actorSelectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.only(left: 220, top: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Actors",
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 60,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width / 3,
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: actors.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, int index) => GestureDetector(
                    onTap: () {
                      setState(() {
                        _actorSelectedIndex = index;
                      });
                    },
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Container(
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                              border: Border.all(
                                color: _actorSelectedIndex == index
                                    ? Colors.white
                                    : Colors.transparent,
                                width: 2,
                              ),
                              image: DecorationImage(
                                image: AssetImage(
                                  actors[index].images,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        _actorSelectedIndex != index
                            ? Container(
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.3),
                                ),
                              )
                            : Container(),
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 30,
                      ),
                      onPressed: () {
                        setState(() {
                          if (_actorSelectedIndex != 0) _actorSelectedIndex--;
                        });
                      }),
                  SizedBox(
                    width: 20,
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: 30,
                      ),
                      onPressed: () {
                        setState(() {
                          if (_actorSelectedIndex < actors.length - 1)
                            _actorSelectedIndex++;
                        });
                      }),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "${actors[_actorSelectedIndex].name}",
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 25,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text(
                  actors[_actorSelectedIndex].discription,
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w300,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    IconButton(
                        icon: Icon(
                          FlutterIcons.facebook_ent,
                          color: Colors.white,
                          size: 20,
                        ),
                        onPressed: () {}),
                    SizedBox(
                      width: 20,
                    ),
                    IconButton(
                        icon: Icon(
                          FlutterIcons.instagram_ant,
                          color: Colors.white,
                          size: 20,
                        ),
                        onPressed: () {}),
                    SizedBox(
                      width: 20,
                    ),
                    IconButton(
                        icon: Icon(
                          FlutterIcons.youtube_ant,
                          color: Colors.white,
                          size: 20,
                        ),
                        onPressed: () {})
                  ],
                ),
              ),
              Expanded(
                child: Container(),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "EN",
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          letterSpacing: 2,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
