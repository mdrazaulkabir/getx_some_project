import 'package:flutter/material.dart';

import 'home_screen.dart';

class GetxSomeProject extends StatelessWidget {
  const GetxSomeProject({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        iconButtonTheme: IconButtonThemeData(
            style: OutlinedButton.styleFrom(
                padding: EdgeInsets.all(8),
                shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(15)),
                backgroundColor: Colors.greenAccent.withOpacity(.5)
            )
        )

      ),
      home: HomeScreen(),
    );
  }
}
