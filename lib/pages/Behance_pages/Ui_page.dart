import 'dart:convert';

import 'package:flutter/material.dart';

import '../../models/works.dart';

class UiPage extends StatefulWidget {
  const UiPage({super.key});

  @override
  State<UiPage> createState() => _UiPageState();
}

class _UiPageState extends State<UiPage> {
  List<Works> works = [];
  @override
  void initState() {
    super.initState();
    loadWorks().then((value) {
      setState(() {
        works = value;
      });
    });
  }

  Future<List<Works>> loadWorks() async {
    String jsonData =
        await DefaultAssetBundle.of(context).loadString('assets/files/Ui.json');
    List<dynamic> jsonList = jsonDecode(jsonData)['products'];
    return jsonList.map((json) => Works.fromJson(json)).toList();
  }

  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;
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
          child: Image.asset(works[index].image),
        );
      },
    );
  }
}
