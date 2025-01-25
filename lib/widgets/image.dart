import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ImageWidget')),
      body: Center(child: Container(height: 200, width: 150, 
      decoration: BoxDecoration(

        boxShadow: [
          BoxShadow(blurRadius: 10,
          color: Colors.grey.shade800,
          spreadRadius: 5.0),

        ],


        //Write "AssetImage" instead of "NetworkImage" & //wtite its path here and also add in pubspec.yaml 
        image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqlW5qSxZUmGuvKQvpeO4U4FM-eSyv-85Aqw&s'), fit: BoxFit.cover),  
        color: Colors.red,
        borderRadius: BorderRadius.circular(20)
      ),
      )),
    );
  }
}