import 'package:flutter/material.dart';

class Rowscols extends StatelessWidget {
  const Rowscols({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text('Rows And Cols')),
        body: Container(
          height: h,
          width: w,
          color: Colors.deepPurple,
          child: Wrap( //"Wrap" instead of "Row"
            direction: Axis.vertical,
            alignment: WrapAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly, //start, end, spaceAround, spaceBetween
            // crossAxisAlignment: CrossAxisAlignment.end,
            children: [
                      Container(height: 60, width: 60, color: Colors.red),
                      Container(height: 60, width: 60, color: Colors.red),
                      Container(height: 60, width: 60, color: Colors.red),
                      Container(height: 60, width: 60, color: Colors.red),
                      Container(height: 60, width: 60, color: Colors.red)
          ],)
        ),
    );
  }
} 

//We can create only one child
//Use "Wrap" in cases like long names and paragraphs or etc...
//Same concepts use for "Column" instead of "Row"