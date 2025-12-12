import 'package:get/get.dart';

class SwitchController extends GetxController {
  RxBool switch1=true.obs;
  onSwitch(bool value){
    switch1.value=value;
    print(switch1.value);
  }
}