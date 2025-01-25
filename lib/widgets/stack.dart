import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Stack Widget')),
        body: Stack(children: [
            Positioned(child: Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Colors.red,image: DecorationImage(image: AssetImage('assets/download.jpeg'), fit: BoxFit.cover),),
                child: Image.asset('assets/download.jpeg'),
            )),

            Positioned(
                left: 20,
                top: 20,
                child: Container(height: 50, width: 50, color: Colors.yellow,)),

            Align(alignment: Alignment.bottomCenter, child: Container(height: 50, width: 50, color: Colors.yellow,),)
        ],),



        //--------------------------------------------------------------------------------
        // body: Container(
        //     color: Colors.blue,
        //     child: Center(
        //         child: Stack(children: [
        //             Positioned(
        //                 bottom: 10,
        //                 left: 10,
        //                 child: Container(height: 400, width: 400, color: Colors.yellow)),
        //             Positioned(
        //                 top: 50,
        //                 right: 50,
        //                 child: Container(height: 200, width: 200, color: Colors.red))
        //         ],),),
        // ),

        //-------------------------------------------------------------------------------------

    );
  }
}