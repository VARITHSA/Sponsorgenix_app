import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sponsorgenix/onboarding/intro_onboard.dart';
import 'package:sponsorgenix/onboarding/onboarding2_page.dart';
import 'package:sponsorgenix/onboarding/onboarding_page.dart';
import 'package:sponsorgenix/onboarding/onboardp3_page.dart';
import 'package:sponsorgenix/pages/explorePage.dart';
import 'package:sponsorgenix/pages/home_pages.dart';
import 'package:sponsorgenix/routes/routes.dart';
// import 'package:sponsorgenix/splashscreen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(
          MediaQuery.of(context).size.width,
          MediaQuery.of(context).size.height,
        ));

    return MaterialApp(
      
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const IntroPage(),
      routes: {
        Routes.homePageRoute: (context) => const HomePage(),
        Routes.explorePageRoute: (context) => const ExplorePage(),
        Routes.introPageRoute: (context) => const IntroPage(),
        Routes.onboardingPageRoute: (context) => const OnboardingPage(),
        Routes.onboardingPage2Route: (context) => const Onboarding2Page(),
        Routes.onboardingPage3route: (context) => const OnboardPage3()
      },
    );
  }
}
