import 'package:flutter/material.dart';
import 'package:getx_some_project/basic_counter/basic_counter.dart';
import 'package:getx_some_project/slider_color_changes/slider_color_changes.dart';
import 'package:getx_some_project/slider_color_changes/switch.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CWAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => BasicCounter()));
            }, icon: CMText1(text1: 'Basic counter'),

            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => SliderColorChanges()));
              }, icon: CMText1(text1: 'Slider color changes with value'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => SwitchClass()));
              }, icon: CMText1(text1: 'Switch with the color'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



//custom method
Text CMText1({required String text1, Color? color1}) => Text(text1,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 25,color: color1?? Colors.black),);

//custom widget
class CWAppBar extends StatelessWidget implements PreferredSizeWidget{
  final String? title1;
  final Color? color1;
  const CWAppBar({super.key,this.title1,this.color1});

  @override
  Size get preferredSize=>const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.greenAccent,
      centerTitle: true,
      title: Text(title1??'GetX Some Project',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
    );
  }
}
