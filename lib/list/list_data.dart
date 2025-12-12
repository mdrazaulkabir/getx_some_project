import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:getx_some_project/home_screen.dart';
import 'package:getx_some_project/list/list_data_controller.dart';

class ListData extends StatefulWidget {
  const ListData({super.key});

  @override
  State<ListData> createState() => _ListDataState();
}

class _ListDataState extends State<ListData> {
  ListDataController listDataController=Get.put(ListDataController());

  // List<String>favouriteDay=["Saturday",'Sunday','Monday','Tuesday','Wednesday','Thursday','Friday'];
  // List<String>emptyListDay=[];

  @override
  Widget build(BuildContext context) {
    print('building ');
    return Scaffold(
      appBar: CWAppBar(title1: 'FavouriteDay wth getx',),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height*.1,
            ),
            CMText1(text1: "Which day you like! Give one love"),
            SizedBox(
              height: MediaQuery.of(context).size.height*.05,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: listDataController.favouriteDay.length,
                itemBuilder: (context, index) {
                  print('i am building here');
                  return Card(
                    elevation: 10,
                    child: Obx(()=>ListTile(
                      onTap: (){
                        if(listDataController.emptyListDay.contains(listDataController.favouriteDay[index].toString())){
                          listDataController.emptyListDay.remove(listDataController.favouriteDay[index].toString());
                        }
                        else{
                          listDataController.emptyListDay.add(listDataController.favouriteDay[index].toString());
                        }
                      },
                      title: Text(listDataController.favouriteDay[index].toString(),),
                      trailing: Icon(Icons.favorite_outlined,color:listDataController.emptyListDay.contains(listDataController.favouriteDay[index].toString())? Colors.greenAccent:Colors.white),
                    ),
                    )



                    // ListTile(
                    //   onTap: (){
                    //     if(emptyListDay.contains(favouriteDay[index].toString())){
                    //       emptyListDay.remove(favouriteDay[index].toString());
                    //     }
                    //     else{
                    //       emptyListDay.add(favouriteDay[index].toString());
                    //     }
                    //    setState(() {
                    //
                    //    });
                    //   },
                    //     title: Text(favouriteDay[index].toString(),),
                    //     trailing: Icon(Icons.favorite_outlined,color:emptyListDay.contains(favouriteDay[index].toString())? Colors.greenAccent:Colors.white),
                    // ),


                  );
                },
              ),
            ),
          ],
        )
      ),
    );
  }
}
