import 'dart:ui';

import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

int pageIndex = 0;

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.withOpacity(0.1),
      child: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
          child: Container(
            height: 70,
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
                    curve: Curves.easeIn,
                    height: pageIndex == 0 ? 50 : 30,
                    width: pageIndex == 0 ? 50 : 30,
                    child: Image.asset(
                      'assets/CompassIcon.png',
                      fit: BoxFit.fill,
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
                    curve: Curves.easeIn,
                    height: pageIndex == 1 ? 50 : 30,
                    width: pageIndex == 1 ? 50 : 30,
                    child: Image.asset(
                      'assets/airdropIcon.png',
                      fit: BoxFit.fill,
                    ),
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
                    curve: Curves.easeIn,
                    height: pageIndex == 2 ? 50 : 30,
                    width: pageIndex == 2 ? 50 : 30,
                    child: const Image(
                      image: AssetImage('assets/BookIcon.png'),
                      fit: BoxFit.fill,
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
                    curve: Curves.easeIn,
                    height: pageIndex == 3 ? 50 : 30,
                    width: pageIndex == 3 ? 50 : 30,
                    child: const Image(
                      image: AssetImage('assets/beIcon.png'),
                      fit: BoxFit.fill,
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
                    curve: Curves.easeIn,
                    height: pageIndex == 4 ? 50 : 30,
                    width: pageIndex == 4 ? 50 : 30,
                    child: const Image(
                      image: AssetImage('assets/codeIcon.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
