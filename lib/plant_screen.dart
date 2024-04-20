import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plant_icons/plant_icons.dart';

class PlantScreen extends StatefulWidget {
  const PlantScreen({super.key});

  @override
  State<PlantScreen> createState() => _PlantScreenState();
}

class _PlantScreenState extends State<PlantScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 100),
              child: CarouselSlider(
                options: CarouselOptions(
                  enlargeCenterPage: true,
                  // autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: const Duration(milliseconds: 1000),
                  viewportFraction: 0.8,
                ),
                items: [
                  Container(
                    height: 195,
                    width: 243.75,
                    child: Image.asset('assests/cardplant.png'),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 31),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Snake Plants",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 22,
                          color: const Color.fromRGBO(48, 48, 48, 1)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 31),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: 40,
                      width: 298,
                      child: Text(
                        "Plansts make your life with minimal and happy love the plants more and enjoy life.",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: const Color.fromRGBO(48, 48, 48, 1)),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                Container(
                  height: 200,
                  width: 320,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Color(0xFF76984B)),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              const Icon(
                                Icons.height_outlined,
                                color: Colors.white,
                              ),
                              Text(
                                "Height",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: Colors.white),
                              ),
                              Text(
                                "30cm-40cm",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 10,
                                    color: Colors.white),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              const Icon(
                                Icons.thermostat,
                                color: Colors.white,
                              ),
                              Text(
                                "Temperature",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: Colors.white),
                              ),
                              Text(
                                "20*C-25*C",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 10,
                                    color: Colors.white),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              const Icon(
                                PlantIcons.plant,
                                color: Colors.white,
                              ),
                              Text(
                                "Ciramic Pot",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: Colors.white),
                              ),
                              Text(
                                "30cm-40cm",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 10,
                                    color: Colors.white),
                              )
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text("Total Price",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: const Color.fromRGBO(
                                          255, 255, 255, 0.8))),
                              Text(
                                "₹ 350",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    color:
                                        const Color.fromRGBO(255, 255, 255, 1)),
                              )
                            ],
                          ),
                          Container(
                              height: 48,
                              width: 150,
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                  color: Color.fromRGBO(103, 133, 74, 1)),
                              child: GestureDetector(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const Icon(
                                      Icons.shopping_bag,
                                      color: Colors.white,
                                      size: 19,
                                    ),
                                    Text(
                                      "Add to cart",
                                      style: GoogleFonts.rubik(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          color: const Color.fromRGBO(
                                              255, 255, 255, 1)),
                                    )
                                  ],
                                ),
                              ))
                        ],
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ));
  }
}
