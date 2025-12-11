import 'package:flutter/material.dart';

import 'home_screen.dart';

class GetxSomeProject extends StatelessWidget {
  const GetxSomeProject({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
