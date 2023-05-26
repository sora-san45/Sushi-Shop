import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sushi_shop/sushitile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List sushiList = [
    ["sushi1.png", "\$ 2.6"],
    ["sushi2.png", "\$ 3.1"],
    ["sushi3.png", "\$ 2.8"],
    ["sushi4.png", "\$ 3.0"]
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(left: 14),
          child: Column(
            children: [
              SizedBox(height: 300),
              Text("Top picks"),
              GridView.builder(
                itemCount: sushiList.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) {
                  SushiTile(sushiList[index]);
                },
              )
            ],
          ),
        ));
  }
}
