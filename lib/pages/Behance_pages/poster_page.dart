import 'package:flutter/material.dart';

class PosterPage extends StatefulWidget {
  const PosterPage({super.key});

  @override
  State<PosterPage> createState() => _PosterPageState();
}

class _PosterPageState extends State<PosterPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      color: Colors.green,
    );
  }
}
