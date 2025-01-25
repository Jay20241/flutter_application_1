import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(color: Theme.of(context).primaryColor,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: Container(
              //color: Colors.red,
              padding: EdgeInsets.all(10),
              child: Row(children: [
                CircleAvatar(radius:50 , 
                backgroundImage: NetworkImage('https://live.staticflickr.com/7160/6410037157_8a32776d93_b.jpg'),),
                
                SizedBox(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text('Rishi Mehta', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                  Text('rishi@gmail.com')
                ],)




              ]),
            )),
            ListTile(
              leading: Icon(Icons.folder),
              title: Text('My Projects'),
              ),
              ListTile(
              leading: Icon(Icons.group),
              title: Text('Shared with me'),
              ),
              ListTile(
              leading: Icon(Icons.star),
              title: Text('Starred'),
              ),
              ListTile(
              leading: Icon(Icons.delete),
              title: Text('Trash'),
              ),
              ListTile(
              leading: Icon(Icons.upload),
              title: Text('Uploads'),
              ),
              Divider(),
              Divider(),
              ListTile(
              leading: Icon(Icons.upcoming),
              title: Text('Upcoming'),
              ),
              ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              ),
          ],
        ),),
      ),
      appBar: AppBar(title: Text('DrawerApp')),
      body: Container(
        child: Center(
          child: Text('Hey There'),
        )),
    );
  }
}