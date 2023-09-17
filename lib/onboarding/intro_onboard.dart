import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sponsorgenix/themes/colors.dart';

import '../routes/routes.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colours.bgColor,
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: RadialGradient(colors: [
                      Colours.gold,
                      Colours.blackShade,
                    ], center: const Alignment(1.0, -1.0)),
                  ),
                ),
              ),
              Container(
                height: height / 2,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    colors: [
                      Colours.gold,
                      Colours.blackShade,
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: height < 900
                ? const EdgeInsets.only(bottom: 47)
                : const EdgeInsets.only(bottom: 75),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: DottedBorder(
                color: Colours.gold,
                strokeWidth: 2,
                strokeCap: StrokeCap.butt,
                borderType: BorderType.RRect,
                radius: const Radius.circular(1000),
                padding: const EdgeInsets.all(6),
                dashPattern: const [6, 0, 0, 6],
                child: const ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(1000)),
                  child: SizedBox(
                    height: 300,
                    width: 300,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: height < 900
                ? const EdgeInsets.only(bottom: 70)
                : const EdgeInsets.only(bottom: 100),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: DottedBorder(
                color: Colours.gold,
                strokeWidth: 2,
                strokeCap: StrokeCap.butt,
                borderType: BorderType.RRect,
                radius: const Radius.circular(1000),
                padding: const EdgeInsets.all(6),
                dashPattern: const [6, 0, 0, 6],
                child: const ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(1000)),
                  child: SizedBox(
                    height: 250,
                    width: 250,
                  ),
                ),
              ),
            ),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                child: Image.asset(
                  'assets/below.png',
                  width: width,
                  fit: BoxFit.fitWidth,
                ),
              )),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, Routes.onboardingPageRoute);
              print('$height,$width');
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  height: 81,
                  width: 81,
                  child: Image.asset('assets/play_button.gif'),
                ),
              ),
            ),
          ),
          const upper_widget(),
          Positioned(
            top: height > 750 ? height * 0.65 : height * 0.585,
            left: width > 350 ? height * 0.110 : height * 0.200,
            child: SizedBox(
                height: height * 0.25,
                child: const Image(image: AssetImage('assets/rocket.gif'))),
          ),
        ],
      ),
    );
  }
}

class upper_widget extends StatelessWidget {
  const upper_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: height < 750 ? 60 : 100),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 2.0),
              child: Image.asset(
                'assets/logo.png',
                height: 35,
                width: 43,
              ),
            ),
            RichText(
              text: TextSpan(
                text: "Sponsorgenix .",
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
                children: [
                  TextSpan(
                    text: 'Get Started',
                    style: GoogleFonts.plusJakartaSans(
                      color: Colours.gold,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: height < 750 ? 40 : 56,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 23),
          child: ShaderMask(
            shaderCallback: (bounds) => LinearGradient(colors: [
              Colors.white,
              Colours.gold,
            ]).createShader(bounds),
            child: FittedBox(
              child: Text(
                "No SignUp",
                style: GoogleFonts.plusJakartaSans(
                    color: Colors.white,
                    fontSize: width < 400 ? 28 : 32,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 23),
          child: ShaderMask(
            shaderCallback: (bounds) => LinearGradient(colors: [
              Colors.white,
              Colours.gold,
            ]).createShader(bounds),
            child: Text(
              "No Login",
              style: GoogleFonts.plusJakartaSans(
                  color: Colors.white,
                  fontSize: width < 400 ? 28 : 32,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 23),
          child: ShaderMask(
            shaderCallback: (bounds) => LinearGradient(colors: [
              Colors.white,
              Colours.gold,
            ]).createShader(bounds),
            child: Text(
              "No Irritating Emails",
              style: GoogleFonts.plusJakartaSans(
                  color: Colors.white,
                  fontSize: width < 400 ? 28 : 32,
                  fontWeight: FontWeight.normal),
            ),
          ),
        ),
        SizedBox(height: height < 800 ? 10 : 30),
        Padding(
          padding: const EdgeInsets.only(left: 23),
          child: ShaderMask(
            shaderCallback: (bounds) => LinearGradient(colors: [
              Colors.white,
              Colours.gold,
            ]).createShader(bounds),
            child: Text(
              "Just Get\nStarted",
              style: GoogleFonts.plusJakartaSans(
                  color: Colors.white,
                  fontSize: width < 400 ? 28 : 32,
                  fontWeight: FontWeight.normal),
            ),
          ),
        ),
      ],
    );
  }
}
