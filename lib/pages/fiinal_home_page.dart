import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../themes/colors.dart';

class FinalHomePage extends StatefulWidget {
  const FinalHomePage({super.key});

  @override
  State<FinalHomePage> createState() => _FinalHomePageState();
}

class _FinalHomePageState extends State<FinalHomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colours.bgColor2,
      body: Stack(
        children: [
          Positioned(
            left: width * 0.4,
            // left: 120,
            child: Image.asset('assets/home_ellipse.png'),
          ),
          Padding(
            padding: const EdgeInsets.all(23),
            child: Flexible(
              child: Row(
                children: [
                  Image.asset(
                    'assets/logo.png',
                    width: 43,
                    height: 35,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(
                      "Sponsorgenix",
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 26.47,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
