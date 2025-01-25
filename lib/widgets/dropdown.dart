import 'package:flutter/material.dart';

//When we need to change the state of any variable, we need to use STATEFULL WIDGET


class DropDownWidget extends StatefulWidget {
  const DropDownWidget({super.key});

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {

  String selectedValue = 'Orange';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('DropDown List')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Container(
            margin: EdgeInsets.all(15),
            height: 70,
            color: Colors.red,
            width: MediaQuery.of(context).size.width,

            child: DropdownButton<String>(
              dropdownColor: Colors.grey.shade200,
              isExpanded: true,
              value: selectedValue,
              icon: Icon(Icons.arrow_circle_down_rounded),
              onChanged: (String? newvalue){
                setState(() {
                  selectedValue = newvalue!;
                });
              },
              items: <String>['Orange', 'Banana', 'Apple', 
              'Grapes'
              ].map<DropdownMenuItem<String>>((String value){
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value));
              }).toList(),
              ),

          )
        ]),
      ),
    );
  }
}