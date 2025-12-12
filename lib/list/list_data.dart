import 'package:flutter/material.dart';
import 'package:getx_some_project/home_screen.dart';

class ListData extends StatefulWidget {
  const ListData({super.key});

  @override
  State<ListData> createState() => _ListDataState();
}

class _ListDataState extends State<ListData> {
  List<String>favouriteDay=["Saturday",'Sunday','Monday','Tuesday','Wednesday','Thursday','Friday'];
  List<String>emptyListDay=[];
  @override
  Widget build(BuildContext context) {
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
                itemCount: favouriteDay.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 10,
                    child: ListTile(
                      onTap: (){
                        if(emptyListDay.contains(favouriteDay[index].toString())){
                          emptyListDay.remove(favouriteDay[index].toString());
                        }
                        else{
                          emptyListDay.add(favouriteDay[index].toString());
                        }
                       setState(() {

                       });
                      },
                        title: Text(favouriteDay[index].toString(),),
                        trailing: Icon(Icons.favorite_outlined,color:emptyListDay.contains(favouriteDay[index].toString())? Colors.greenAccent:Colors.white),
                    ),
                    
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
