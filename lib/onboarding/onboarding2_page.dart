import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../routes/routes.dart';
import '../themes/colors.dart';

class Onboarding2Page extends StatefulWidget {
  const Onboarding2Page({super.key});

  @override
  State<Onboarding2Page> createState() => _Onboarding2PageState();
}

class _Onboarding2PageState extends State<Onboarding2Page> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colours.bgColor,
      body: Stack(
        children: [
          const Lower(),
          const LowerLayer1(),
          const LowerLayer2(),
          const LowerLayer3(),
          // Positioned(
          //   top: 565,
          //   left: 174,
          //   child: Image.asset('assets/next_icon.png'),
          // ),
          Positioned(
            top: height < 750 ? 600 : height * 0.670,
            left: width < 400 ? 120 : width * 0.425,
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, Routes.onboardingPage3route);
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
      top: height < 750 ? 120 : height * 0.250,
      left: width < 400 ? 70 : width * 0.19,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShaderMask(
            shaderCallback: (bounds) => LinearGradient(colors: [
              Colors.white,
              Colours.gold,
            ]).createShader(bounds),
            child: Text(
              "Which Topics You are\nInterested",
              style: GoogleFonts.plusJakartaSans(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(height: height < 750 ? 20 : 30),
          const OnboardContents(title: "StartUp"),
          const OnboardContents(title: 'Designing'),
          const OnboardContents(title: 'UI/UX'),
          const OnboardContents(title: 'Branding'),
          const OnboardContents(title: 'Finance'),
          const OnboardContents(title: 'Explore'),
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
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Positioned(
      top: height < 700 ? 100 : height * 0.080,
      left: width < 400 ? 70 : width * 0.160,
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

class Lower extends StatelessWidget {
  const Lower({
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
