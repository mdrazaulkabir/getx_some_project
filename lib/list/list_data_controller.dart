import 'package:get/get.dart';

class ListDataController extends GetxController{
  RxList<String>favouriteDay=["Saturday",'Sunday','Monday','Tuesday','Wednesday','Thursday','Friday'].obs;
  RxList<dynamic>emptyListDay=[].obs;
  listDataAdd(String value1){
    emptyListDay.add(value1);
  }
  listDataRemove(String value2){
    emptyListDay.remove(value2);
  }
}