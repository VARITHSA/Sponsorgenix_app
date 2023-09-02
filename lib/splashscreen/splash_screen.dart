import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sponsorgenix/themes/colors.dart';

import '../routes/routes.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  bool _isactive = true;
  final int remaining = 10;
  int a = 0;
  @override
  void initState() {
    Timer.periodic(const Duration(milliseconds: 400), (timer) {
      setState(() {
        _isactive = !_isactive;
        a = timer.tick;
      });
      // a == remaining ? timer.cancel() : timer.tick;
      if (a == remaining) {
        timer.cancel();
        Navigator.pushNamed(context, Routes.introPageRoute);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colours.bgColor,
      body: Stack(
        children: [
          _isactive
              ? Center(
                  child: Container(
                    height: 140,
                    width: 140,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        gradient: RadialGradient(
                          colors: [
                            Colors.white,
                            Colours.bgColor,
                          ],
                          radius: 0.502,
                          tileMode: TileMode.decal,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(100))),
                  ),
                )
              : Center(
                  child: Container(
                    color: Colours.bgColor,
                  ),
                ),
          Center(
            child: Image.asset('assets/logo.png'),
          ),
        ],
      ),
    );
  }
}

// void callback(bool isactive) {
//   isactive = false;
//   Timer(const Duration(seconds: 3), () {
//     isactive = true;
//   });
// }
