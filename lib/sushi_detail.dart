import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SushiDetail extends StatefulWidget {
  const SushiDetail({super.key, required sushiName, required sushiImage, required sushiPrice});

  @override
  State<SushiDetail> createState() => _SushiDetailState();
}

class _SushiDetailState extends State<SushiDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}