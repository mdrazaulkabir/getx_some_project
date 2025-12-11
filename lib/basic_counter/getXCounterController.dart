import 'package:get/get.dart';
class GetxCounterController extends GetxController{
  RxInt number=0.obs;
   incrementNumber(){
    number.value++;
    print(number.value);
  }
}