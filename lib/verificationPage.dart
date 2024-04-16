import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:plantapp/homePage.dart';
import 'package:plantapp/loginPage.dart';
import 'package:google_fonts/google_fonts.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({super.key});

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 16,
              width: 12,
              margin: const EdgeInsets.only(top: 66, left: 34),
              child: GestureDetector(
                onTap: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const loginPage())),
                },
                child: const Icon(Icons.arrow_back_ios_new),
              ),
            ),
            Image.asset('assests/ring1.png'),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 170),
          child: Text(
            "Verification",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w700,
              fontSize: 25,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          margin: const EdgeInsets.only(right: 50),
          height: 46,
          width: 272,
          child: Text(
            "Enter the OTP code from the phone we just sent you",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: const Color.fromRGBO(0, 0, 0, 0.15)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(30),
          child: Row(
            children: List.generate(
              4,
              (index) => Container(
                  margin: const EdgeInsets.all(15),
                  width: 56,
                  child: Container(
                    decoration: const BoxDecoration(boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 8),
                          blurRadius: 20,
                          color: Color.fromRGBO(0, 0, 0, 0.06))
                    ]),
                    child: TextField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      maxLength: 1,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                                width: 1,
                                color: Color.fromRGBO(204, 211, 196, 1))),
                      ),
                    ),
                  )),
            ),
          ),
        ),
        Row(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 45),
              child: Text(
                "Don’t receive OTP code! ",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: const Color.fromRGBO(0, 0, 0, 0.6)),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 5),
              child: Text(
                "Resend",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: const Color.fromRGBO(0, 0, 0, 0.8)),
              ),
            )
          ],
        ),
        Container(
          margin: const EdgeInsets.only(top: 20),
          height: 55,
          width: 370,
          decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 20),
                    color: Color.fromRGBO(0, 0, 0, 0.15),
                    blurRadius: 40)
              ],
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(124, 180, 70, 1),
                    Color.fromRGBO(62, 102, 24, 1)
                  ]),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: GestureDetector(
            onDoubleTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomePage()))
            },
            child: Center(
              child: Text(
                "Submit",
                style: GoogleFonts.rubik(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Colors.white),
              ),
            ),
          ),
        )
      ],
    ));
  }
}
