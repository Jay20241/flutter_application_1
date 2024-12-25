import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/container_sized.dart';

void main()=>runApp(new MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.deepPurple), home: const Container_Sized());
  }
}