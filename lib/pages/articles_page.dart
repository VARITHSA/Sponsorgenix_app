import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../themes/colors.dart';

class ArticlePage extends StatefulWidget {
  const ArticlePage({super.key});

  @override
  State<ArticlePage> createState() => _ArticlePageState();
}

bool isActive1 = false;
bool isActive2 = false;

// List data = [
//   ModelClass(
//     name: 'TommyShelby',
//     title: 'The Art of UX Design: Crafting Delightful User Experiences',
//     description: 'descroptionss',
//   ),
//   ModelClass(
//     name: 'TommyShelby',
//     title: 'The Art of UX Design: Crafting Delightful User Experiences',
//     description: 'descroptionss',
//   ),
//   ModelClass(
//     name: 'TommyShelby',
//     title: 'The Art of UX Design: Crafting Delightful User Experiences',
//     description: 'descroptionss',
//   ),
// ];

class _ArticlePageState extends State<ArticlePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colours.bgColor2,
        body: SafeArea(
          child: Stack(
            children: [
              Positioned(
                left: 160.w,
                child: Image.asset('assets/bgellipsequad.png'),
              ),
              const Layer(),
            ],
          ),
        ));
  }
}

class Layer extends StatelessWidget {
  const Layer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(23.w),
            child: Row(
              children: [
                Image.asset(
                  'assets/logo.png',
                  width: 43.w,
                  height: 35.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: RichText(
                    text: TextSpan(
                      text: 'Sponsorgenix',
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 26.47,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                      children: [
                        TextSpan(
                          text: '.Articles',
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colours.gold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Card(
                color: const Color(0xff27292A).withOpacity(0.5),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: ClipRRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 25,
                        sigmaY: 25,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 8.0,
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Image.asset('assets/profilepic1.png'),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 10.w),
                                          child: Text(
                                            "Tommy Shelby ",
                                            style: GoogleFonts.plusJakartaSans(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 11.w),
                                          child: Text(
                                            "15 min ago ",
                                            style: GoogleFonts.plusJakartaSans(
                                              color: const Color(0x80FFFFFF),
                                              fontSize: 12.sp,
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Researchers are discovering how music affects the brain, helping us to make sense of its real emotional and social power...',
                                  style: GoogleFonts.plusJakartaSans(
                                    color: Colors.white,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              // const Spacer(),
                              Image.asset(
                                'assets/mediaarticles.png',
                                width: 340.w,
                                // height: 200.h,
                              ),
                              const BuildExpansion(),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Card(
                color: const Color(0xff27292A).withOpacity(0.5),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: ClipRRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 25,
                        sigmaY: 25,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 8.0,
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Image.asset('assets/profilepic1.png'),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 10.w),
                                          child: Text(
                                            "Tommy Shelby ",
                                            style: GoogleFonts.plusJakartaSans(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 11.w),
                                          child: Text(
                                            "15 min ago ",
                                            style: GoogleFonts.plusJakartaSans(
                                              color: const Color(0x80FFFFFF),
                                              fontSize: 12.sp,
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Researchers are discovering how music affects the brain, helping us to make sense of its real emotional and social power...',
                                  style: GoogleFonts.plusJakartaSans(
                                    color: Colors.white,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              // const Spacer(),
                              Image.asset(
                                'assets/mediaarticles.png',
                                width: 340.w,
                                // height: 200.h,
                              ),
                              const BuildExpansion(),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Card(
                color: const Color(0xff27292A).withOpacity(0.5),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: ClipRRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 25,
                        sigmaY: 25,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 8.0,
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Image.asset('assets/profilepic1.png'),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 10.w),
                                          child: Text(
                                            "Tommy Shelby ",
                                            style: GoogleFonts.plusJakartaSans(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 11.w),
                                          child: Text(
                                            "15 min ago ",
                                            style: GoogleFonts.plusJakartaSans(
                                              color: const Color(0x80FFFFFF),
                                              fontSize: 12.sp,
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Researchers are discovering how music affects the brain, helping us to make sense of its real emotional and social power...',
                                  style: GoogleFonts.plusJakartaSans(
                                    color: Colors.white,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              // const Spacer(),
                              Image.asset(
                                'assets/mediaarticles.png',
                                width: 340.w,
                                // height: 200.h,
                              ),
                              const BuildExpansion(),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

// Row(
  //   children: [
  //     Image.asset(
  //       'assets/logo.png',
  //       width: 43,
  //       height: 35,
  //     ),
  //     Padding(
  //       padding: const EdgeInsets.only(left: 5),
  //       child: RichText(
  //         text: TextSpan(
  //           text: 'Sponsorgenix',
  //           style: GoogleFonts.plusJakartaSans(
  //             fontSize: 26.47,
  //             fontWeight: FontWeight.w400,
  //             color: Colors.white,
  //           ),
  //           children: [
  //             TextSpan(
  //               text: '.Articles',
  //               style: GoogleFonts.plusJakartaSans(
  //                 fontSize: 15,
  //                 fontWeight: FontWeight.w400,
  //                 color: Colours.gold,
  //               ),
  //             )
  //           ],
  //         ),
  //       ),
  //     ),
  //   ],
  // ),
}

class BuildExpansion extends StatefulWidget {
  const BuildExpansion({
    super.key,
  });

  @override
  State<BuildExpansion> createState() => _BuildExpansionState();
}

class _BuildExpansionState extends State<BuildExpansion> {
  bool _isActive = false;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      childrenPadding: const EdgeInsets.symmetric(horizontal: 17),
      title: Row(
        children: [
          Text(
            "assisted by ",
            style: GoogleFonts.plusJakartaSans(
              color: Colours.pinkColor,
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          Image.asset('assets/profilescollege.png')
        ],
      ),
      expandedCrossAxisAlignment: CrossAxisAlignment.start,
      trailing: GestureDetector(
        onTap: () {
          setState(() {
            _isActive = !_isActive;
          });
        },
        child: _isActive
            ? SvgPicture.asset(
                'assets/likeButton_fill.svg',
                height: 20.h,
                width: 20.w,
              )
            : SvgPicture.asset(
                'assets/likeButton.svg',
                height: 20.h,
                width: 20.w,
              ),
      ),
      children: [
        Text(
          "User Experience (UX) Design has emerged as a pivotal discipline in the modern digital landscape. It is the art of creating seamless, intuitive, and enjoyable interactions between users and digital products, be it websites, apps, or software. In this fast-paced world, where attention spans are limited and competition is fierce, UX design plays a crucial role in capturing users' hearts and ensuring their loyalty. Let's delve into the fascinating world of UX design and explore what makes it so essential in today's technological era.",
          style: GoogleFonts.plusJakartaSans(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
        Text(
          'Understanding UX Design:',
          style: GoogleFonts.plusJakartaSans(
            fontSize: 14.sp,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
        Text(
          "User Experience (UX) Design has emerged as a pivotal discipline in the modern digital landscape. It is the art of creating seamless, intuitive, and enjoyable interactions between users and digital products, be it websites, apps, or software. In this fast-paced world, where attention spans are limited and competition is fierce, UX design plays a crucial role in capturing users' hearts and ensuring their loyalty. Let's delve into the fascinating world of UX design and explore what makes it so essential in today's technological era.",
          style: GoogleFonts.plusJakartaSans(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
        Text(
          "User Experience (UX) Design has emerged as a pivotal discipline in the modern digital landscape. It is the art of creating seamless, intuitive, and enjoyable interactions between users and digital products, be it websites, apps, or software. In this fast-paced world, where attention spans are limited and competition is fierce, UX design plays a crucial role in capturing users' hearts and ensuring their loyalty. Let's delve into the fascinating world of UX design and explore what makes it so essential in today's technological era.",
          style: GoogleFonts.plusJakartaSans(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
