import 'package:flutter/material.dart';
import 'package:getx_some_project/home_screen.dart';

class BasicCounter extends StatefulWidget {
  const BasicCounter({super.key});

  @override
  State<BasicCounter> createState() => _BasicCounterState();
}

class _BasicCounterState extends State<BasicCounter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CWAppBar(title1: "Basic counter with GetX",),

    );
  }
}
