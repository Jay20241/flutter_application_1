import 'package:flutter/material.dart';

class AlertWidget extends StatelessWidget {
  const AlertWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Dialog')),
        body: Center(
          child: ElevatedButton(onPressed: (){_showMyDialog(context);}, child: Text('Show Alert')),
        ),
    );
  }
}

Future<void> _showMyDialog(BuildContext context)async{
  return showDialog(context: context, builder: (BuildContext context){
    return AlertDialog(
      backgroundColor: const Color.fromARGB(255, 63, 17, 17),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 0,
      scrollable: true,
      title: Text('This is an Alert'),
      content: SingleChildScrollView(
        child: ListBody(
          children: [
            Text('This is a demo'),
            Text('This is My content')
          ],
        ),
      ),
      actions: [
        TextButton(onPressed: (){}, child: Text('Approve')),
        TextButton(onPressed: (){Navigator.pop(context);}, child: Text('Cancel')),
      ],
    );
  });
}