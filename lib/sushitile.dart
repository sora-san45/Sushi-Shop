import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SushiTile extends StatelessWidget {
  const SushiTile(  {super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height:150,
        width: 150,
        decoration: BoxDecoration(
          color:Color.fromARGB(202, 188, 117, 117),
          
        ),
      )
    ]);
  }
}
