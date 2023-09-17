import 'dart:convert';

import 'package:flutter/material.dart';

import '../../models/works.dart';

class ThreeDePage extends StatefulWidget {
  const ThreeDePage({super.key});

  @override
  State<ThreeDePage> createState() => ThreeDePageState();
}

class ThreeDePageState extends State<ThreeDePage> {
  List<Works> works = [];
  final String targetType = '3D';

  @override
  void initState() {
    super.initState();
    loadWorks(targetType).then((value) {
      setState(() {
        works = value;
      });
    });
  }

  Future<List<Works>> loadWorks(String targetType) async {
    String jsonData =
        await DefaultAssetBundle.of(context).loadString('assets/files/Ui.json');
    List<dynamic> jsonList = jsonDecode(jsonData)['products'];

    // Filter the JSON data to only include objects of the target type
    List<dynamic> filteredJsonList =
        jsonList.where((json) => json['type'] == targetType).toList();

    return filteredJsonList.map((json) => Works.fromJson(json)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: works.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 0,
        mainAxisSpacing: 10,
        childAspectRatio: 1.0,
      ),
      itemBuilder: (context, index) {
        return GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return Dialog(
                      child: Image.asset(works[index].image),
                    );
                  });
              print(index);
            },
            child: Image.asset(works[index].image));
      },
    );
  }
}
