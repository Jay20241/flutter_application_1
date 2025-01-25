import 'package:flutter/material.dart';

class TabWidget extends StatelessWidget {
  const TabWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3, 
      child: Scaffold(
        appBar: AppBar(title: Text('WhatsApp'), backgroundColor: Colors.blue,
        bottom: const TabBar(
          //isScrollable: true, //for many no. of tabs
          //indicatorColor: ,
          //indicatorWeight: ,
          tabs: [
            Tab(icon: Icon(Icons.chat),text: 'CHATS',),
            Tab(icon: Icon(Icons.chat_bubble),text: 'STATUS',),
            Tab(icon: Icon(Icons.call),text: 'CALLS',), ]),),
        
        body: TabBarView(children: [
          Container(child: Center(child: Text('Chats', style: TextStyle(fontSize: 30)))),
          Container(child: Center(child: Text('Status', style: TextStyle(fontSize: 30)))),
          Container(child: Center(child: Text('Calls', style: TextStyle(fontSize: 30)))),
        ]),
      ));
  }
}

//StreamBuilders, FeatureBuilders