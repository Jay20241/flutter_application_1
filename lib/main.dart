import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/day19UI.dart';


void main() async{
  
  runApp(new MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark, primaryColor: Colors.green), 
        //home: const Container_Sized()
        home: day19UI(),

        );
  }
}
//You have to write home param
//Store image in assets will have larger size of app compared to image fetch from internet