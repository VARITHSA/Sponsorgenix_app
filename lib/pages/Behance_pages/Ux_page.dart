import 'package:flutter/material.dart';

class UxPage extends StatefulWidget {
  const UxPage({super.key});

  @override
  State<UxPage> createState() => _UxPageState();
}

class _UxPageState extends State<UxPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      color: Colors.blue,
    );
  }
}
