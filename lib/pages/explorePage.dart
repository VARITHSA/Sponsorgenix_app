import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../themes/colors.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

int currentIndex = 0;
const _inactiveColor = Colors.grey;

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colours.bgColor2,
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              S1(),
              S2(),
              S3(),
              S4(),
              S5(),
            ],
          ),
        ),
      ),
    );
  }
}

class S5 extends StatefulWidget {
  const S5({
    super.key,
  });

  @override
  State<S5> createState() => _S5State();
}

class _S5State extends State<S5> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 700,
        width: 600,
        decoration: BoxDecoration(
          color: Colours.bgColor2,
        ),
        // alignment: Alignment.topCenter,
        child: Stack(
          children: [
            Positioned(
              top: -100,
              left: 140,
              child: Image.asset(
                'assets/s5ellipse.png',
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 25 + 20,
                    top: 15,
                  ),
                  child: Text(
                    "| Works",
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 12.0,
                      color: const Color(0xFFC7C7C7),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 25 + 20,
                  ),
                  child: RichText(
                    text: TextSpan(
                      text: 'Our Latest ',
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                      children: [
                        TextSpan(
                          text: 'Works',
                          style: GoogleFonts.plusJakartaSans(
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                              color: Colours.goldDark),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                CarouselSlider(
                  items: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('assets/Works1.png'),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Best website Collections',
                            style: GoogleFonts.plusJakartaSans(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/Works2.png',
                          height: 180,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Mobile Collections',
                            style: GoogleFonts.plusJakartaSans(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                  options: CarouselOptions(
                    viewportFraction: 0.7,
                    height: 230,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 25 + 20,
                    top: 15,
                  ),
                  child: Text(
                    "| Testimonials",
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 12.0,
                      color: const Color(0xFFC7C7C7),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 25 + 20,
                  ),
                  child: RichText(
                    text: TextSpan(
                      text: 'People ',
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                      children: [
                        TextSpan(
                          text: 'Talk About Us',
                          style: GoogleFonts.plusJakartaSans(
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                              color: Colours.goldDark),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}

class S4 extends StatelessWidget {
  const S4({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 465,
      width: 600,
      decoration: const BoxDecoration(
          // color: Colors.white,
          ),
      child: Stack(
        children: [
          Image.asset(
            'assets/s4bg.png',
            width: double.infinity,
            fit: BoxFit.fitWidth,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 25 + 20,
              top: 15,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "| EXPLORE",
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 12.0,
                    color: const Color(0xFFC7C7C7),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'Explore our',
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                RichText(
                  text: TextSpan(
                    text: 'Awesome',
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                    children: [
                      TextSpan(
                        text: ' Services',
                        style: GoogleFonts.plusJakartaSans(
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                            color: Colours.goldDark),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  height: 85,
                  width: 307,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xffD2D3D3),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('assets/slider2.png'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Website Design',
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              '76 Projects',
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xffD2D3D3),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  height: 85,
                  width: 307,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xffD2D3D3),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('assets/slider3.png'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Mobile App Design',
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              '54 Projects',
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xffD2D3D3),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  height: 85,
                  width: 307,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xffD2D3D3),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('assets/slider4.png'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Mobile App Design',
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              '54 Projects',
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xffD2D3D3),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class S3 extends StatelessWidget {
  const S3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(16.0),
        alignment: Alignment.topCenter,
        height: 200,
        width: 600,
        color: Colors.transparent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text(
                "| Articles",
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 12.0,
                  color: const Color(0xFFC7C7C7),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: RichText(
                text: TextSpan(
                  text: 'Read Our',
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                  children: [
                    TextSpan(
                      text: ' Article',
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        color: Colours.goldDark,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            CarouselSlider.builder(
              options: CarouselOptions(
                height: 90,
                viewportFraction: 0.7,
              ),
              itemCount: 3,
              itemBuilder: (context, index, realIndex) {
                return Container(
                  height: 80,
                  width: 250,
                  decoration: BoxDecoration(
                      color: const Color(0x1AFFFFFF),
                      borderRadius: BorderRadius.circular(14)),
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Column(
                      children: [
                        Image.asset('assets/slider1.png'),
                        Text(
                          'Researchers are discovering how music affects the brain, helping us to make sense of its real emotional and social power...',
                          style: GoogleFonts.plusJakartaSans(
                              fontSize: 8,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ));
  }
}

class S2 extends StatelessWidget {
  const S2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      width: 600,
      color: Colors.transparent,
      child: Stack(
        children: [
          Positioned(
            child: Container(
              height: 500,
              width: 600,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(1000),
                color: Colours.bgColor,
                gradient: RadialGradient(
                  colors: [
                    Colours.gold,
                    Colours.bgColor,
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 90,
            left: 70,
            child: Column(
              children: [
                Image.asset('assets/sponsorgenix_phone.png'),
              ],
            ),
          ),
          Positioned(
            top: 320,
            child: Padding(
              padding: const EdgeInsets.only(left: 36),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                        text: 'How do we ',
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 24.27,
                          fontWeight: FontWeight.w700,
                        ),
                        children: [
                          TextSpan(
                            text: 'help',
                            style: GoogleFonts.plusJakartaSans(
                                fontSize: 24.27,
                                fontWeight: FontWeight.w700,
                                color: Colours.goldDark),
                          ),
                          TextSpan(
                            text: '?',
                            style: GoogleFonts.plusJakartaSans(
                                fontSize: 24.27,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                        ]),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'We’ll help you finding a ',
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 18.44,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xffC7C7C7),
                      ),
                      children: [
                        TextSpan(
                          text: 'solution',
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 18.44,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        TextSpan(
                          text: ' and\n',
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 18.44,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xffC7C7C7),
                          ),
                        ),
                        TextSpan(
                          text: 'solve your problems',
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 18.44,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        TextSpan(
                          text:
                              '. We use process \ndesign to create digital products. \nBesides that also helps their business.',
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 18.44,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xffC7C7C7),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '45+ ',
                            style: GoogleFonts.plusJakartaSans(
                                fontSize: 32,
                                color: Colours.goldDark,
                                fontWeight: FontWeight.w800),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            'Projects',
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'Completed',
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(width: 70),
                      Container(
                        height: 60,
                        width: 1,
                        decoration: const BoxDecoration(color: Colors.white),
                      ),
                      const SizedBox(width: 70),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '124+ ',
                            style: GoogleFonts.plusJakartaSans(
                                fontSize: 32,
                                color: Colours.goldDark,
                                fontWeight: FontWeight.w800),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            'Projects',
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'Completed',
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ],
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

class S1 extends StatefulWidget {
  const S1({
    super.key,
  });

  @override
  State<S1> createState() => _S1State();
}

class _S1State extends State<S1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      height: 448,
      width: 600,
      child: Stack(
        children: [
          Positioned(
            left: 160,
            child: Image.asset('assets/home_ellipse.png'),
          ),
          Padding(
            padding: const EdgeInsets.all(23.0),
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
          Positioned(
            top: 60,
            left: 20,
            child: Padding(
              padding: const EdgeInsets.only(top: 43.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ShaderMask(
                      shaderCallback: (bounds) => LinearGradient(colors: [
                        Colors.white,
                        Colours.gold,
                      ]).createShader(bounds),
                      child: Text(
                        "A Team Of Designers",
                        style: GoogleFonts.plusJakartaSans(
                            color: Colors.white,
                            fontSize: 31,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    ShaderMask(
                      shaderCallback: (bounds) => LinearGradient(colors: [
                        Colors.white,
                        Colours.gold,
                      ]).createShader(bounds),
                      child: Text(
                        "and Developers",
                        style: GoogleFonts.plusJakartaSans(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    ShaderMask(
                      shaderCallback: (bounds) => LinearGradient(colors: [
                        Colors.white,
                        Colours.gold,
                      ]).createShader(bounds),
                      child: Text(
                        "that makes Dreams comes\ntrue.",
                        style: GoogleFonts.plusJakartaSans(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 7),
                      child: Text(
                        "|About",
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 12.0, //it was 9.0 in figma
                          color: const Color(0xffffc7c7c7),
                        ),
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                          text: "Sponsorgenix",
                          style: GoogleFonts.plusJakartaSans(
                              fontSize: 15.44,
                              color: Colors.white,
                              fontWeight: FontWeight.w700),
                          children: [
                            TextSpan(
                              text:
                                  ' is a digital experience \ndesign studio. We help connect brands \nwith customers and drive growth by \ndesigning elegant, useful & engaging\n experiences.',
                              style: GoogleFonts.plusJakartaSans(
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xffC7C7C7)),
                            )
                          ]),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 40,
                          width: 148,
                          decoration: const BoxDecoration(
                              color: Color(0xff65D066),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                  bottomLeft: Radius.circular(20))),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Row(
                              children: [
                                Text(
                                  'Contact Us',
                                  style: GoogleFonts.plusJakartaSans(
                                    color: Colors.white,
                                    fontSize: 15.44,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const SizedBox(
                                  width: 9,
                                ),
                                Image.asset(
                                  'assets/whatsapp_logo.png',
                                  height: 30,
                                  width: 30,
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 40,
                          width: 148,
                          decoration: BoxDecoration(
                              // color: const Color(0xff65D066),
                              border: Border.all(
                                width: 2,
                                color: Colours.gold,
                              ),
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20))),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16, top: 1),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Book a',
                                  style: GoogleFonts.plusJakartaSans(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                ShaderMask(
                                  shaderCallback: (bounds) =>
                                      LinearGradient(colors: [
                                    Colors.white,
                                    Colours.gold,
                                  ]).createShader(bounds),
                                  child: Text(
                                    "Consultation ?",
                                    style: GoogleFonts.plusJakartaSans(
                                        color: Colors.white,
                                        fontSize: 13.44,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
