import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sponsorgenix/themes/colors.dart';

class PodcastPage extends StatefulWidget {
  const PodcastPage({super.key});

  @override
  State<PodcastPage> createState() => _PodcastPageState();
}

class _PodcastPageState extends State<PodcastPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colours.bgColor2,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: width * 0.4,
              child: Image.asset('assets/bgellipsequad.png'),
            ),
            Image.asset('assets/fusepodcast.png'),
            Positioned(
              top: height < 750 ? height * 0.22 : height * 0.25,
              left: width < 400 ? width * 0.03 : width * 0.1,
              child: Image.asset('assets/podcastcenter.png'),
            ),
            Positioned(
              top: height < 750 ? height * 0.35 : height * 0.30,
              left: width < 400 ? width * 0.15 : width * 0.1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'This Feature is under',
                    style: GoogleFonts.plusJakartaSans(
                      color: Colors.white,
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    'Development',
                    style: GoogleFonts.plusJakartaSans(
                      color: Colours.goldDark,
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    'The page you requested could not be\nfound due to our hardworking\ndevelopers :/',
                    style: GoogleFonts.plusJakartaSans(
                        fontSize: 16.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(23.0),
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
                                text: '.Podcast',
                                style: GoogleFonts.plusJakartaSans(
                                  fontSize: 15.sp,
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
              ],
            ),
            Positioned(
              top: height < 750 ? height * 0.60 : height * 0.50,
              left: width < 400 ? width * 0.55 : width * 0.50,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 40.h,
                  width: 97.w,
                  decoration: BoxDecoration(
                    color: Colours.greenColor,
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                  ),
                  child: Center(
                    child: Text(
                      'Go Back',
                      style: GoogleFonts.plusJakartaSans(
                        color: Colors.white,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
