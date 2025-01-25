import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all(EdgeInsets.all(40)),
                overlayColor: MaterialStateProperty.all(Colors.black),
                elevation: MaterialStateProperty.all(10),
                backgroundColor: MaterialStateProperty.all(Colors.blueAccent)
              ),
              onPressed: () {}, 
              child: Text('Press me', style: TextStyle(fontSize: 20, color: Colors.black)
              )
            ),
            SizedBox(height: 20),
            Container(
              height: 50,
              width: 300,
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
                  backgroundColor: MaterialStateProperty.all(Colors.deepOrangeAccent)
                ),
                onPressed: () {
                print("Hello user");
              }, child: Text('Button 2', style: TextStyle(fontSize: 20, color: Theme.of(context).primaryColor),)),
            )
          ],
        ),
      ),
    );
  }
}