import 'package:get/get.dart';

class ListDataController extends GetxController{
  RxList<String>favouriteDay=["Saturday",'Sunday','Monday','Tuesday','Wednesday','Thursday','Friday'].obs;
  RxList<dynamic>emptyListDay=[].obs;
  // listDataAdd(){
  //   emptyListDay.contains(favouriteDay.toString());
  // }
  // listDataRemove(){
  //
  // }
}