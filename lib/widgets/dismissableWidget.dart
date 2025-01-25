import 'package:flutter/material.dart';

class Dismissablewidget extends StatefulWidget {
  const Dismissablewidget({super.key});

  @override
  State<Dismissablewidget> createState() => _DismissablewidgetState();
}

class _DismissablewidgetState extends State<Dismissablewidget> {
  

  List<String> fruits = ['Banana', 'Mango', 'Apple', 'Grapes'];
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dismissible Package')),
      body: ListView.builder(itemBuilder: (context, index){
        final fruit = fruits[index];
        return Dismissible(
          onDismissed: (direction){
            if(direction==DismissDirection.startToEnd){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(fruits[index]),
              backgroundColor: Colors.redAccent));
            }
            if(direction==DismissDirection.endToStart){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(fruits[index]),
              backgroundColor: Colors.green));
            }
          },

          key: Key(fruit), 
          background: Container(color: Colors.red), // You can set Icon here
          secondaryBackground: Container(color: Colors.green), //You can set Icon here also.
          child: Card(
            child: ListTile(
              title: Text(fruits[index]),
            ),
          ));
      }, itemCount: fruits.length),
    );
  }
}