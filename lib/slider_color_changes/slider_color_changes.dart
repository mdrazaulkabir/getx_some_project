import 'package:flutter/material.dart';
import 'package:getx_some_project/home_screen.dart';
import 'package:get/get.dart';
import 'package:getx_some_project/slider_color_changes/slider_controller.dart';

class SliderColorChanges extends StatefulWidget {
  const SliderColorChanges({super.key});

  @override
  State<SliderColorChanges> createState() => _SliderColorChangesState();
}

class _SliderColorChangesState extends State<SliderColorChanges> {
  SliderController sliderController = Get.put(SliderController());

  // double opacityColor=.4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CWAppBar(title1: "Getx Slider color change"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(()=>Container(
              height: 300,
              width: 300,
              color: Colors.greenAccent.withOpacity(
                sliderController.opacityColor.value,
              ),
              // child: Center(child: Text("hello",style: TextStyle(fontSize:opacityColor,color: Colors.black),)),
            ),),

            SizedBox(height: 50),
            Obx(() => Slider(
                value: sliderController.opacityColor.value,
                onChanged: (value) {
                  sliderController.sliderChanger(
                    sliderController.opacityColor.value = value,
                  );
                },
              ),
            ),

            // Slider(value: opacityColor, onChanged: (value){
            //   opacityColor=value;
            //   setState(() {
            //   });
            // })
          ],
        ),
      ),
    );
  }
}
