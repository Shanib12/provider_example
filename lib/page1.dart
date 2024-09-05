import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/page2.dart';

import 'package:provider_example/provider/heading_provider.dart';

class page1screen extends StatelessWidget {
  page1screen({super.key});

  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CounterProvider>(context);
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [
          Colors.blueAccent,
          Colors.white,
        ],
        begin: Alignment.topRight,
        end: Alignment.bottomRight,),),

      child: Scaffold(
        backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text(
            'Page 2',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(10),
            ),
          ),
          ),
          body: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Counter Value: ${counterProvider.counter}",
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(height: 20,),
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>page2screen()));
                  
                },
                child: Text('Click me!'),
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue,
                  textStyle: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
      
          )
          ),
          floatingActionButton: Align(
            alignment: Alignment.bottomRight,
            child: FloatingActionButton(
              onPressed: (){
                counterProvider.counterincreament();
                
              },
              child: Icon(Icons.add),),
          ),
          ),
    );
  }
}
