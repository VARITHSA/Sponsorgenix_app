import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sponsorgenix/pages/Behance_pages/Advertise_page.dart';
import 'package:sponsorgenix/pages/Behance_pages/Ui_page.dart';
import 'package:sponsorgenix/pages/Behance_pages/Ux_page.dart';
import 'package:sponsorgenix/pages/Behance_pages/poster_page.dart';
import 'package:sponsorgenix/pages/Behance_pages/social_page.dart';

import '../themes/colors.dart';

class BehancePage extends StatefulWidget {
  const BehancePage({super.key});

  @override
  State<BehancePage> createState() => _BehancePageState();
}

class _BehancePageState extends State<BehancePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colours.bgColor2,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: 163.w,
              right: 0,
              top: 0,
              // bottom: 0,
              child: Image.asset('assets/bgellipsequad.png'),
            ),
            // const Layer10(),
            // Positioned(
            //   top: MediaQuery.of(context).size.height * 0.10,
            //   child: const LAyer1(),
            // )
            const Positioned.fill(child: Layer1())
          ],
        ),
      ),
    );
  }
}

// class Layer10 extends StatefulWidget {
//   const Layer10({super.key});

//   @override
//   State<Layer10> createState() => _Layer10State();
// }

// class _Layer10State extends State<Layer10> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Padding(
//           padding: EdgeInsets.all(23.0.w),
//           child: Row(
//             children: [
//               Image.asset(
//                 'assets/logo.png',
//                 width: 43.w,
//                 height: 35.h,
//               ),
//               Padding(
//                 padding: EdgeInsets.only(left: 5.w),
//                 child: RichText(
//                   text: TextSpan(
//                     text: 'Sponsorgenix',
//                     style: GoogleFonts.plusJakartaSans(
//                       fontSize: 26.47.sp,
//                       fontWeight: FontWeight.w400,
//                       color: Colors.white,
//                     ),
//                     children: [
//                       TextSpan(
//                         text: '.Behance',
//                         style: GoogleFonts.plusJakartaSans(
//                           fontSize: 15.sp,
//                           fontWeight: FontWeight.w400,
//                           color: Colours.gold,
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }

// class LAyer1 extends StatefulWidget {
//   const LAyer1({super.key});

//   @override
//   State<LAyer1> createState() => _LAyer1State();
// }

// class _LAyer1State extends State<LAyer1> {
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: SizedBox(
//         height: MediaQuery.of(context)
//             .size
//             .height, // Set a specific height or constraints
//         child: Column(
//           children: [
//             Image.asset('assets/packages/ui_works/Ui_work1.png'),
//             Image.asset('assets/packages/ui_works/Ui_work1.png'),
//             Image.asset('assets/packages/ui_works/Ui_work1.png'),
//             Image.asset('assets/packages/ui_works/Ui_work1.png'),
//             Image.asset('assets/packages/ui_works/Ui_work1.png'),
//           ],
//         ),
//       ),
//     );
//   }
// }

class Layer1 extends StatefulWidget {
  const Layer1({
    super.key,
  });

  @override
  State<Layer1> createState() => _Layer1State();
}

bool _isActive = false;
final pages = [
  const UiPage(),
  const UxPage(),
  const PosterPage(),
  const AdvertisePage(),
  const SocialPage(),
];
int _pageIndex = 0;
String type = '';

class _Layer1State extends State<Layer1> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(23.0.w),
          child: Row(
            children: [
              Image.asset(
                'assets/logo.png',
                width: 43.w,
                height: 35.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 5.w),
                child: RichText(
                  text: TextSpan(
                    text: 'Sponsorgenix',
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 26.47.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                    children: [
                      TextSpan(
                        text: '.Behance',
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w400,
                          color: Colours.gold,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  _pageIndex = 0;
                  type = 'UI';
                  print(type);
                });
              },
              child: Container(
                height: 60.h,
                width: 60.w,
                decoration: BoxDecoration(
                  color: const Color(0xFF27292A),
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: [
                    _pageIndex == 0
                        ? BoxShadow(
                            color: Colours.gold,
                            blurRadius: 10,
                          )
                        : const BoxShadow(
                            color: Colors.transparent,
                          )
                  ],
                ),
                child: Center(
                  child: SvgPicture.asset(
                    'assets/uiIcon_svg.svg',
                    height: 30.h,
                    width: 30.w,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _pageIndex = 1;
                  type = 'UX';
                  print(type);
                });
              },
              child: Container(
                height: 60.h,
                width: 60.w,
                decoration: BoxDecoration(
                  color: const Color(0xFF27292A),
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: [
                    _pageIndex == 1
                        ? BoxShadow(
                            color: Colours.gold,
                            blurRadius: 10,
                          )
                        : const BoxShadow(
                            color: Colors.transparent,
                          )
                  ],
                ),
                child: Center(
                  child: SvgPicture.asset(
                    'assets/uxIcon_svg.svg',
                    height: 30.h,
                    width: 30.w,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _pageIndex = 2;
                  type = 'POST';
                  print(type);
                });
              },
              child: Container(
                height: 60.h,
                width: 60.w,
                decoration: BoxDecoration(
                  color: const Color(0xFF27292A),
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: [
                    _pageIndex == 2
                        ? BoxShadow(
                            color: Colours.gold,
                            blurRadius: 10,
                          )
                        : const BoxShadow(
                            color: Colors.transparent,
                          )
                  ],
                ),
                child: Center(
                  child: SvgPicture.asset(
                    'assets/posters_svg.svg',
                    height: 30.h,
                    width: 30.w,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _pageIndex = 3;
                  type = 'SOC';
                  print(type);
                });
              },
              child: Container(
                height: 60.h,
                width: 60.w,
                decoration: BoxDecoration(
                  color: const Color(0xFF27292A),
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: [
                    _pageIndex == 3
                        ? BoxShadow(
                            color: Colours.gold,
                            blurRadius: 10,
                          )
                        : const BoxShadow(
                            color: Colors.transparent,
                          )
                  ],
                ),
                child: Center(
                  child: SvgPicture.asset(
                    'assets/heartIcon_svg.svg',
                    height: 30.h,
                    width: 30.w,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _pageIndex = 4;
                  type = 'AD';
                  print(type);
                });
              },
              child: Container(
                height: 60.h,
                width: 60.w,
                decoration: BoxDecoration(
                  color: const Color(0xFF27292A),
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: [
                    _pageIndex == 4
                        ? BoxShadow(
                            color: Colours.gold,
                            blurRadius: 10,
                          )
                        : const BoxShadow(
                            color: Colors.transparent,
                          )
                  ],
                ),
                child: Center(
                  child: SvgPicture.asset(
                    'assets/advertiseIcon_svg.svg',
                    height: 30.h,
                    width: 30.w,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 30.h,
        ),
        Expanded(
          child: pages[_pageIndex],
        ),
      ],
    );
  }
}
