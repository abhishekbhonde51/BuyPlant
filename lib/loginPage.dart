import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plantapp/verificationPage.dart';

void main() => runApp(const loginPage());

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  void verificationPage() {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const VerificationPage()));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Stack(
                    children: [
                      Positioned(
                        child: Image.asset(
                          'assests/ring.png',
                          color: const Color.fromRGBO(112, 130, 91, 1),
                        ),
                      ),
                    ],
                  ),
                ])
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      "Log in",
                      textAlign: TextAlign.left,
                      style: GoogleFonts.poppins(
                        fontSize: 34.22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 40),
                          width: 370,
                          height: 55,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                    offset: Offset(0, 20),
                                    blurRadius: 40,
                                    color: Color.fromRGBO(0, 0, 0, 0.15))
                              ],
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              border: Border.all(
                                  width: 1,
                                  color:
                                      const Color.fromRGBO(203, 211, 196, 1))),
                          child: TextFormField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: const Icon(
                                  Icons.call,
                                  color: Color.fromRGBO(164, 164, 164, 1),
                                ),
                                labelText: "Mobile Number",
                                labelStyle: GoogleFonts.inter(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13,
                                    color: const Color.fromRGBO(
                                        164, 164, 163, 1))),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      height: 55,
                      width: 370,
                      decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 20),
                                blurRadius: 40,
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
                      child: GestureDetector(
                        onTap: verificationPage,
                        child: Center(
                          child: Text(
                            "Log in",
                            style: GoogleFonts.rubik(
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Image.asset(
                      'assests/mainPlant.png',
                      height: 399,
                      width: 399,
                    )
                  ],
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
