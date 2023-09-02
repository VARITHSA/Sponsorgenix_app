import 'package:flutter/material.dart';

class AdvertisePage extends StatefulWidget {
  const AdvertisePage({super.key});

  @override
  State<AdvertisePage> createState() => _AdvertisePageState();
}

class _AdvertisePageState extends State<AdvertisePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      color: Colors.pink,
    );
  }
}
