import 'package:get/get.dart';

class SliderController extends GetxController{
  RxDouble opacityColor=.4.obs;
  sliderChanger(double value1){
    opacityColor.value=value1;
    print(opacityColor.value);
  }
}