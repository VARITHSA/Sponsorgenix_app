import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sponsorgenix/pages/articles_page.dart';
import 'package:sponsorgenix/pages/behance_page.dart';
import 'package:sponsorgenix/pages/explorePage.dart';
import 'package:sponsorgenix/pages/podcast_page.dart';
import 'package:sponsorgenix/pages/videos_page.dart';
import 'package:sponsorgenix/themes/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

final pages = [
  const ExplorePage(),
  const PodcastPage(),
  const ArticlePage(),
  const BehancePage(),
  const VideoPage(),
];
int pageIndex = 0;
int _pagehandler(int index) {
  return index - 1;
}

var _pageIndex = _pagehandler(pageIndex);

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colours.bgColor2,
      body: pages[pageIndex],
      // bottomNavigationBar: GlassBottomBar(
      //   items: [
      //     GlassBottomBarItem(
      //       icon: const Icon(Icons.home),
      //       title: const GlassText("Home"),
      //     ),
      //     GlassBottomBarItem(
      //       icon: const Icon(Icons.search),
      //       title: const GlassText("Search"),
      //     ),
      //     GlassBottomBarItem(
      //       icon: const Icon(Icons.settings),
      //       title: const GlassText("Settings"),
      //     ),
      //   ],
      bottomNavigationBar: Container(
        // color: Colors.grey.withOpacity(0.1),
        color: Colors.transparent,
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 8),
            child: Container(
              height: 90,
              color: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        pageIndex = 0;
                        print(pageIndex);
                      });
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      height: pageIndex == 0 ? 50 : 30,
                      width: pageIndex == 0 ? 50 : 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          pageIndex == 0
                              ? BoxShadow(
                                  color: Colors.white.withOpacity(0.4),
                                  blurRadius: 6,
                                  spreadRadius: 2,
                                )
                              : const BoxShadow(
                                  color: Colors.transparent,
                                  blurRadius: 6,
                                  spreadRadius: 2,
                                ),
                        ],
                      ),
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeIn,
                        height: pageIndex == 0 ? 50 : 30,
                        width: pageIndex == 0 ? 50 : 30,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: SvgPicture.asset(
                          'assets/CompassSvg.svg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        pageIndex = 1;
                      });
                    }, //
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      height: pageIndex == 1 ? 50 : 30,
                      width: pageIndex == 1 ? 50 : 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          pageIndex == 1
                              ? BoxShadow(
                                  color: Colors.white.withOpacity(0.4),
                                  blurRadius: 6,
                                  spreadRadius: 2,
                                )
                              : const BoxShadow(
                                  color: Colors.transparent,
                                  blurRadius: 6,
                                  spreadRadius: 2,
                                )
                        ],
                      ),
                      child: AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeIn,
                          height: pageIndex == 1 ? 50 : 30,
                          width: pageIndex == 1 ? 50 : 30,
                          child: SvgPicture.asset(
                            'assets/airdropSvg.svg',
                            fit: BoxFit.fill,
                          )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        pageIndex = 2;
                      });
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      height: pageIndex == 2 ? 50 : 30,
                      width: pageIndex == 2 ? 50 : 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          pageIndex == 2
                              ? BoxShadow(
                                  color: Colors.white.withOpacity(0.4),
                                  blurRadius: 6,
                                  spreadRadius: 2,
                                )
                              : const BoxShadow(
                                  color: Colors.transparent,
                                  blurRadius: 6,
                                  spreadRadius: 2,
                                )
                        ],
                      ),
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeIn,
                        height: pageIndex == 2 ? 50 : 30,
                        width: pageIndex == 2 ? 50 : 30,
                        child: SvgPicture.asset(
                          'assets/bookSvg.svg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        pageIndex = 3;
                      });
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      height: pageIndex == 3 ? 50 : 30,
                      width: pageIndex == 3 ? 50 : 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          pageIndex == 3
                              ? BoxShadow(
                                  color: Colors.white.withOpacity(0.4),
                                  blurRadius: 6,
                                  spreadRadius: 2,
                                )
                              : const BoxShadow(
                                  color: Colors.transparent,
                                  blurRadius: 6,
                                  spreadRadius: 2,
                                )
                        ],
                      ),
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeIn,
                        height: pageIndex == 3 ? 50 : 30,
                        width: pageIndex == 3 ? 50 : 30,
                        child: SvgPicture.asset(
                          'assets/BeSvg.svg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        pageIndex = 4;
                      });
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      height: pageIndex == 4 ? 50 : 30,
                      width: pageIndex == 4 ? 50 : 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          pageIndex == 4
                              ? BoxShadow(
                                  color: Colors.white.withOpacity(0.4),
                                  blurRadius: 6,
                                  spreadRadius: 2,
                                )
                              : const BoxShadow(
                                  color: Colors.transparent,
                                  blurRadius: 6,
                                  spreadRadius: 2,
                                )
                        ],
                      ),
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeIn,
                        height: pageIndex == 4 ? 50 : 30,
                        width: pageIndex == 4 ? 50 : 30,
                        child: SvgPicture.asset(
                          'assets/codeSvg.svg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class PageHandler {
  int handler(int index) {
    return index = index - 1;
  }
}
