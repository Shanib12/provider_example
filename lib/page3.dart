import 'package:flutter/material.dart';
import 'package:provider_example/page1.dart';


class page3screen
 extends StatelessWidget {
  const page3screen
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(backgroundColor: Colors.amber,
        title: Text("page 3"),
        centerTitle: true,
        leading: IconButton(onPressed: (){
           Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder:(context)=>page1screen()),(Route<dynamic>route)=>false);
        }, icon: Icon(Icons.arrow_back)),
      ),

      body: Center(child: ElevatedButton(onPressed: (){}, child: Icon(Icons.add)))
    
    );
  }
}