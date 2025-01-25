import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bottom Sheet', style: TextStyle(color: Colors.white)), backgroundColor: Colors.red),
      body: Center(
        child: ElevatedButton(onPressed: (){
          showModalBottomSheet(
            backgroundColor: Colors.grey,
            elevation: 20,
            isDismissible: false, //IF you click outside it, it will not disappear.
            enableDrag: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30))
            ),
            context: context, builder: (context){
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
              ListTile(
                title: Text('Btn1'),
                subtitle: Text('S1'),
              ),ListTile(
                title: Text('Btn2'),
                subtitle: Text('S2'),
              ),ListTile(
                title: Text('Btn3'),
                subtitle: Text('S3'),
              ),ListTile(
                title: Text('Btn4'),
                subtitle: Text('S4'),
              ),

            ],);
          });
        }, child: Text('Show bottom sheet')),
      ),
    );
  }
}