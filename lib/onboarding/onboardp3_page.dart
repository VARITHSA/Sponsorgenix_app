import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../routes/routes.dart';
import '../themes/colors.dart';

class OnboardPage3 extends StatefulWidget {
  const OnboardPage3({super.key});

  @override
  State<OnboardPage3> createState() => _OnboardPage3State();
}

class _OnboardPage3State extends State<OnboardPage3> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colours.bgColor,
      body: Stack(
        children: [
          const LowerLayer(),
          const LowerLayer1(),
          const LowerLayer2(),
          const LowerLayer3(),
          Positioned(
            top: height < 700 ? 500 : height * 0.670,
            left: width < 400 ? 120 : width * 0.425,
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, Routes.homePageRoute);
              },
              child: Center(
                child: Container(
                  height: 36,
                  width: 69,
                  color: Colors.transparent,
                  child: Image.asset('assets/next_icon.png'),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class LowerLayer3 extends StatelessWidget {
  const LowerLayer3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Positioned(
      top: height < 700 ? 50 : height * 0.25,
      left: width < 400 ? 60 : width * 0.20,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShaderMask(
            shaderCallback: (bounds) => LinearGradient(colors: [
              Colors.white,
              Colours.gold,
            ]).createShader(bounds),
            child: Text(
              "Who are",
              style: GoogleFonts.plusJakartaSans(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w400),
            ),
          ),
          ShaderMask(
            shaderCallback: (bounds) => LinearGradient(colors: [
              Colors.white,
              Colours.gold,
            ]).createShader(bounds),
            child: Text(
              "You ?",
              style: GoogleFonts.plusJakartaSans(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: height < 700 ? 10 : 20,
          ),
          const OnboardContents(title: 'Student'),
          const OnboardContents(title: 'Creator'),
          const OnboardContents(title: 'Artist'),
          const OnboardContents(title: 'Teacher'),
          const OnboardContents(title: 'Entrepreneur'),
        ],
      ),
    );
  }
}

class OnboardContents extends StatefulWidget {
  const OnboardContents({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;
  @override
  State<OnboardContents> createState() => _OnboardContentsState();
}

bool isActive = false;

class _OnboardContentsState extends State<OnboardContents> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isActive = !isActive;
        });
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 25,
            width: 25,
            decoration: BoxDecoration(
              color: isActive ? const Color(0xffDBDBDB) : Colors.transparent,
              border: Border.all(
                color: const Color(0xffCBCBCB),
                width: 1.5,
              ),
              borderRadius: BorderRadius.circular(7),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              widget.title,
              style: GoogleFonts.plusJakartaSans(
                fontSize: 23.46,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class LowerLayer2 extends StatelessWidget {
  const LowerLayer2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Positioned(
      top: height < 700 ? 20 : height * 0.080,
      left: width < 300 ? 50 : width * 0.16,
      child: Row(
        children: [
          Image.asset(
            'assets/logo.png',
            height: 35,
            width: 43,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 4),
            child: Text(
              "Sponsorgenix",
              style: GoogleFonts.plusJakartaSans(
                  color: Colors.white,
                  fontSize: 26.47,
                  fontWeight: FontWeight.w400),
            ),
          )
        ],
      ),
    );
  }
}

class LowerLayer1 extends StatelessWidget {
  const LowerLayer1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 20,
            sigmaY: 20,
          ),
          child: const Image(
            image: AssetImage('assets/onboardp2bg.png'),
          ),
        ),
      ),
    );
  }
}

class LowerLayer extends StatelessWidget {
  const LowerLayer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            decoration: const BoxDecoration(),
            child: Image.asset(
              'assets/onboardp2bglower.png',
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
      ],
    );
  }
}
