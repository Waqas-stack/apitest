import 'package:flutter/material.dart';

import 'api.dart';
import 'modelof.dart';

class Home extends StatelessWidget {
  //const Home({Key? key}) : super(key: key);
  Api api=Api();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("api"),),
      body: Column(
        children: [
          Expanded(
              child: FutureBuilder<Slaman>(
                future:api.Sulmankhan(),
                builder: (BuildContext context,  snapshot) {
                  if(snapshot.hasData){
                    return ListView.builder(
                        itemCount:snapshot.data!.chapters!.length,
                        itemBuilder: (context,index){
                          return Column(
                            children: [
                              Text(snapshot.data!.chapters![index].revelationPlace!.toString()),
                            ],
                          );
                        });
                  }else{
                    return Text("loadin");
                  }

                },

          ))
        ],
      ),
    );
  }
}
