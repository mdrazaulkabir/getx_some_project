import 'package:flutter/material.dart';
import 'package:getx_some_project/home_screen.dart';
import 'package:getx_some_project/slider_color_changes/switch_controller.dart';
import 'package:get/get.dart';
class SwitchClass extends StatefulWidget {
  const SwitchClass({super.key});

  @override
  State<SwitchClass> createState() => _SwitchClassState();
}

class _SwitchClassState extends State<SwitchClass> {
  SwitchController switchController=Get.put(SwitchController());
  //bool switch1=true;
  @override
  Widget build(BuildContext context) {
    print('hello i am rebuilding');
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: CWAppBar(
        title1: "Switch",
      ),
      body: Center(
          child:Obx(()=>Container(
            height: 250,width: 250,
            color: switchController.switch1.value?Colors.white:Colors.black54,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CMText1(text1: "You can switch here",
                    color1: switchController.switch1.value ? Colors.black : Colors.white),
                Switch(
                    value: switchController.switch1.value, onChanged: (value1) {
                  //switchController.switch1.value=value1;
                  switchController.onSwitch(value1);
                })

                //it's not need because this
                // Obx(()=>Switch(value: switchController.switch1.value, onChanged: (value1){
                //   //switchController.switch1.value=value1;
                //   switchController.onSwitch(value1);
                // })),

                // Switch(value: switch1, onChanged: (value1){
                //   switch1=value1;
                //   // setState(() {
                //   // });
                // })
              ],
            ),
          )),
      ),
    );
  }
}
