import 'package:flutter/material.dart';
import 'package:getx_some_project/basic_counter/basic_counter.dart';

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
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>BasicCounter()));
            }, icon: CMText1(text1: 'Basic counter'))
          ],
        ),
      ),
    );
  }
}



//custom method
Text CMText1({required String text1}) => Text(text1,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 25),);

//custom widget
class CWAppBar extends StatelessWidget implements PreferredSizeWidget{
  final String? title1;
  const CWAppBar({super.key,this.title1});

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
