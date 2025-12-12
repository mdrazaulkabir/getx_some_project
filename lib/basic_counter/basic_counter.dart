import 'package:flutter/material.dart';
import 'package:getx_some_project/basic_counter/getXCounterController.dart';
import 'package:getx_some_project/home_screen.dart';
import 'package:get/get.dart';

class BasicCounter extends StatefulWidget {
  const BasicCounter({super.key});

  @override
  State<BasicCounter> createState() => _BasicCounterState();
}

class _BasicCounterState extends State<BasicCounter> {
  GetxCounterController controller = Get.put(GetxCounterController());

  //int numberInc = 0;

  // @override
  // void initState() {
  //   super.initState();
  //  Timer.periodic(Duration(seconds:1), (timer){
  //    number++;
  //    setState(() {
  //
  //    });
  //  });
  //
  //  //  Timer(Duration(seconds:1 ), (){
  //  //    number++;
  //  //    setState(() {
  //  //
  //  //    });
  //  //  });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CWAppBar(title1: "Basic counter with GetX"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Obx((){
            //   return CMText1(text1: "Increment number: ${_controller.number}");
            // })
            Obx(()=>CMText1(text1: "Increment number: ${controller.number.value.toString()}"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.incrementNumber();
          // number++;
          // setState(() { });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.greenAccent,
      ),
    );
  }
}
