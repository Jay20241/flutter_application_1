import 'package:flutter/material.dart';

class Container_Sized extends StatelessWidget {
  const Container_Sized({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text('Container and Sized Box')),
        body: Center(child: Container(
              padding: const EdgeInsets.all(10),
              //margin: EdgeInsets.all(10),
              height: 100, 
              width: 100, 
              decoration: const BoxDecoration(
                color:Colors.blue, 
                //shape: BoxShape.circle
                //borderRadius: BorderRadius.circular(20),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 20,
                    spreadRadius: 10,
                    color: Colors.green
                  )
                ]
              ),
              child: 
                  Center(child: Container(color: Colors.red))),)
                  //Text('Hello Flutter',style: TextStyle(fontSize: 20)))))
        //body: const Center(child: SizedBox(height: 50, width: 50, child: Text('Hello Flutter'))),
    );
  }
}
//Color must be inside the Decoration()
//Scaffold is the roof of the app
//padding  -  space from inside
//margin  - space from outside