import 'package:flutter/material.dart';

class BuildNavBar extends StatefulWidget {
  @override
  _BuildNavBarState createState() => _BuildNavBarState();
}

class _BuildNavBarState extends State<BuildNavBar> {
  int _selectedIndex = 0;
  List<String> _navbartitle = [
    "Home",
    "TV Shows",
    "Movies",
    "Series",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width,
      color: Colors.transparent,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 30,
              top: 10.0,
              bottom: 10.0,
            ),
            child: Image.asset("assets/Netflix_logo_n.png"),
          ),
          Expanded(child: Container()),
          Expanded(
            child: Container(
              child: ListView.builder(
                itemCount: _navbartitle.length,
                scrollDirection: Axis.horizontal,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (_, int index) => Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 35,
                    vertical: 20,
                  ),
                  child: Stack(
                    children: [
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              _selectedIndex = index;
                            });
                          },
                          child: Container(
                            child: Text(
                              _navbartitle[index],
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                letterSpacing: 2,
                              ),
                            ),
                          ),
                        ),
                      ),
                      _selectedIndex == index
                          ? Positioned(
                              bottom: 0,
                              left: 15,
                              right: 15,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Container(
                                  height: 1,
                                  width: 20,
                                  color: Colors.red,
                                ),
                              ),
                            )
                          : Container(),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: IconButton(
                      icon: Icon(
                        Icons.search,
                        size: 30,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Stack(
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.notifications,
                            size: 30,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                        Positioned(
                          right: 5,
                          top: 10,
                          child: Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 20, top: 10, left: 20, bottom: 10),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          "assets/profileimage.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
