import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plantapp/plant_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> buildContainers() {
    return List.generate(
      5,
      (index) => Container(
        margin: const EdgeInsets.only(left: 18),
        height: 128,
        width: 360,
        decoration: const BoxDecoration(
            color: Color.fromRGBO(204, 231, 185, 1),
            borderRadius: BorderRadius.all(Radius.circular(14))),
        child: Row(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 47, top: 30),
                    child: Text(
                      "30% OFF",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 27,
                          color: Colors.black),
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 25,
                    ),
                    child: Text(
                      "02-23 April",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: const Color.fromRGBO(0, 0, 0, 0.6)),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 130,
              height: 118,
              margin: const EdgeInsets.only(left: 50),
              decoration: BoxDecoration(boxShadow: const []),
              child: Image.asset(
                'assests/plantScroll.png',
              ),
            )
          ],
        ),
      ),
    );
  }

  List<Widget> anotherScrollView() {
    return List.generate(
      5,
      (index) => GestureDetector(
        onTap: () => {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => PlantScreen()))
        },
        child: Container(
          margin: const EdgeInsets.only(left: 18),
          height: 198,
          width: 151,
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  offset: Offset(10, 10),
                  blurRadius: 40.8,
                  color: Color.fromRGBO(0, 0, 0, 0.06))
            ],
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Container(
              width: 110,
              height: 132,
              decoration: const BoxDecoration(boxShadow: const []),
              child: Image.asset(
                'assests/plantScroll.png',
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 20),
              child: Text(
                "Snake Plants",
                style: GoogleFonts.dmSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(48, 48, 48, 1),
                ),
              ),
            ),
            const SizedBox(
              height: 13,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "₹320",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: const Color.fromRGBO(62, 102, 24, 1)),
                ),
                Container(
                  height: 26,
                  width: 26,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(237, 238, 235, 1),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: const Icon(
                    Icons.shop,
                    size: 17.64,
                    color: Color.fromRGBO(0, 0, 0, 1),
                  ),
                )
              ],
            )
          ]),
        ),
      ),
    );
  }

  List<Widget> anotherScrollView2() {
    return List.generate(
      5,
      (index) => Container(
        margin: const EdgeInsets.only(left: 18),
        height: 198,
        width: 151,
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: Offset(10, 10),
                blurRadius: 40.8,
                color: Color.fromRGBO(0, 0, 0, 0.06))
          ],
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Container(
            width: 110,
            height: 132,
            decoration: BoxDecoration(boxShadow: const []),
            child: Image.asset(
              'assests/plantScroll.png',
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 20),
            child: Text(
              "Snake Plants",
              style: GoogleFonts.dmSans(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: const Color.fromRGBO(48, 48, 48, 1),
              ),
            ),
          ),
          const SizedBox(
            height: 13,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "₹320",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: const Color.fromRGBO(62, 102, 24, 1)),
              ),
              Container(
                height: 26,
                width: 26,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(237, 238, 235, 1),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: const Icon(
                  Icons.shop,
                  size: 17.64,
                  color: Color.fromRGBO(0, 0, 0, 1),
                ),
              )
            ],
          )
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  'assests/topring.png',
                  width: 254,
                  height: 81,
                  color: const Color.fromRGBO(174, 189, 159, 1),
                )
              ],
            ),

            // padding: const EdgeInsets.all(10),
            Padding(
              padding: const EdgeInsets.all(40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 64,
                    width: 186,
                    child: Text(
                      'Find your favorite plants',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 24,
                          color: Colors.black),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            offset: Offset(0, 4),
                            blurRadius: 16.1,
                            color: Color.fromRGBO(0, 0, 0, 0.15))
                      ],
                      color: const Color.fromRGBO(255, 255, 255, 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Icon(
                      Icons.shop,
                      color: Color.fromRGBO(62, 102, 24, 1),
                    ),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: buildContainers()),
            ),
            Container(
              margin: const EdgeInsets.only(right: 260, top: 30),
              child: Text(
                "Indoor",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 25,
                    color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: anotherScrollView()),
            ),
            Container(
              margin: const EdgeInsets.only(right: 260, top: 30),
              child: Text(
                "Outdoor",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 25,
                    color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: anotherScrollView2()),
            ),
          ],
        ),
      ),
    );
  }
}
