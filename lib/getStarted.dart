import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plantapp/loginPage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: getStartedPage(),
    );
  }
}

class getStartedPage extends StatefulWidget {
  const getStartedPage({super.key});

  State createState() => _getStartedPageState();
}

class _getStartedPageState extends State {
  void navigationPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const loginPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 44),
              child:
                  Image.asset('assests/mainPlant.png', height: 464, width: 360),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30, right: 65),
              child: Text(
                'Enjoy your ',
                style: GoogleFonts.poppins(
                  fontSize: 34.22,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Row(
              children: [
                Text(
                  textAlign: TextAlign.left,
                  "life with",
                  style: GoogleFonts.poppins(
                    fontSize: 34.22,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "Plants",
                  textAlign: TextAlign.left,
                  style: GoogleFonts.poppins(
                    fontSize: 34.22,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: navigationPage,
              child: Container(
                  height: 50,
                  width: 320,
                  decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 20),
                            blurRadius: 20,
                            color: Color.fromRGBO(0, 0, 0, 0.15))
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color.fromRGBO(124, 180, 70, 1),
                            Color.fromRGBO(62, 102, 24, 1),
                          ])),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Get started",
                          style: GoogleFonts.rubik(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: Colors.white),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        )
                      ],
                    ),
                  )),
            )
          ],
        )
      ],
    ));
  }
}
