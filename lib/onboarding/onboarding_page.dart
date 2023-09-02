import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../routes/routes.dart';
import '../themes/colors.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  late PageController _pagecontroller = PageController();

  int pageIndex = 0;
  @override
  void initState() {
    _pagecontroller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pagecontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colours.bgColor,
      body: Stack(
        children: [
          const Lower(),
          PageView.builder(
            controller: _pagecontroller,
            itemCount: data.length,
            onPageChanged: (index) {
              setState(() {
                pageIndex = index;
              });
            },
            itemBuilder: ((context, index) {
              return OnBoardContents(
                gifImage: data[index].gifImage,
                title: data[index].title,
                description: data[index].description,
              );
            }),
          ),
          Positioned(
            top: height < 750 ? 560 : height * 0.720,
            left: width < 400 ? 145 : width * 0.415,
            child: GestureDetector(
                onTap: () {
                  // print('$height, $width');
                  pageIndex != 2
                      ? _pagecontroller.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.ease)
                      : Navigator.pushNamed(
                          context, Routes.onboardingPage2Route);
                },
                child: Image.asset('assets/next_icon.png')),
          ),
          Positioned(
              top: height < 750 ? height * 0.89 : height * 0.820,
              left: width < 400 ? width * 0.430 : width * 0.440,
              child: Row(
                children: [
                  ...List.generate(
                    data.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: DotIndicator(
                        isactive: index == pageIndex,
                      ),
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    Key? key,
    this.isactive = false,
  }) : super(key: key);
  final bool isactive;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 9.54,
      width: 9.54,
      decoration: BoxDecoration(
        color: isactive ? Colors.white : Colors.black,
        borderRadius: BorderRadius.circular(100),
      ),
    );
  }
}

class OnBoardContents extends StatelessWidget {
  const OnBoardContents({
    Key? key,
    required this.gifImage,
    required this.title,
    required this.description,
  }) : super(key: key);
  final String gifImage;
  final String title;
  final String description;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    // double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        const OnboardContent1(),
        Padding(
          padding: size.width < 380
              ? EdgeInsets.only(
                  top: size.height * 0.05,
                  left: size.width * 0.12,
                  right: size.width * 0.14,
                )
              : EdgeInsets.only(
                  top: size.height * 0.130,
                  left: size.width * 0.175,
                  right: size.width * 0.180,
                ),
          child: Column(
            children: [
              Image.asset(
                gifImage,
                height: 230,
                width: 230,
              ),
              Row(
                children: [
                  Text(
                    title,
                    style: GoogleFonts.plusJakartaSans(
                      color: Colors.white,
                      fontSize: 23.46,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  Image.asset(
                    'assets/sponsorgenix_logo_onboard.png',
                  ),
                ],
              ),
              Text(
                description,
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 10,
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),
              const onboard_below(),
            ],
          ),
        ),
        Positioned(
          top: size.height < 750 ? size.height * 0.58 : size.height * 0.570,
          left: size.width < 400 ? size.width * 0.80 : size.width * 0.770,
          // top: height > 740 ? 520 : 470,
          // left: width > 370 ? 318 : 300,
          child: RotatedBox(
            quarterTurns: 1,
            child: Text(
              "sponsorgenix@gmail.com",
              style: GoogleFonts.plusJakartaSans(
                fontSize: 17.5,
                fontWeight: FontWeight.w600,
                color: const Color(0x75FFFFFF),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class onboard_below extends StatelessWidget {
  const onboard_below({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Text(
                  'VALIDTHRU',
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 8.45,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
                Text(
                  '05/24',
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 15.02,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 29,
            ),
            Column(
              children: [
                Text(
                  'CVV',
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 8.45,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
                Text(
                  '09X',
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 15.02,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class OnboardContent1 extends StatelessWidget {
  const OnboardContent1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 652.71,
        width: 292,
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
            child: const Image(
              image: AssetImage(
                'assets/base.png',
              ),
            ),
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
              'assets/Podcast.png',
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

class Onboard {
  final String gifImage, title, description;
  Onboard({
    required this.gifImage,
    required this.title,
    required this.description,
  });
}

final List<Onboard> data = [
  Onboard(
    gifImage: 'assets/onboard1.gif',
    title: "Get Updated with\nDesign Trends.",
    description:
        "Unlock the power of innovation and creativity with our cutting-edge design articles. Whether you're an aspiring designer, a seasoned professional, or a design enthusiast, our curated content is here to keep you in the loop with the most current trends and industry insights.",
  ),
  Onboard(
    gifImage: 'assets/onboard2.gif',
    title: "Crafting Visions,\nIgniting Designs.",
    description:
        "Welcome to our captivating world of artistry and innovation. Step into a realm where creativity knows no bounds, and design possibilities are limitless. Our design portfolio is a showcase of our finest works, a testament to our passion for crafting remarkable visual experiences.",
  ),
  Onboard(
    gifImage: 'assets/onboard3.gif',
    title: "Your Relax\nWe do the Work.",
    description:
        "At Sponsorgenix, we understand the profound impact that impeccable design can have on your brand's success. Our marketing design services are a harmonious blend of creativity, strategy, and innovation, tailored to amplify your brand's message and captivate your target audience.",
  )
];
