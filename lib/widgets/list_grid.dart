import 'package:flutter/material.dart';

class ListGrid extends StatefulWidget {
  const ListGrid({super.key});

  @override
  State<ListGrid> createState() => _ListGridState();
}

class _ListGridState extends State<ListGrid> {

  List<String> fruits = ['Orange', 'Apple', 'Bnana', 'Mango', 'WaterMelon'];
  Map fruits_discount = {
    'fruits' : ['Orange', 'Apple', 'Bnana', 'Mango', 'WaterMelon'],
    'discount' : ['10%', '20%', '25%', '30%', '5%']
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List and Grid'),
        backgroundColor: Colors.red,
        elevation: 10,
      ),
      body: Container(
        // child: ListView.builder(
        //   itemCount: fruits.length,
        //   itemBuilder: (context, index){
        //     return Card(child: ListTile(
        //       onTap: (){
        //         print(fruits_discount['fruits'][index]);
        //       },
        //       leading: Icon(Icons.account_tree),
        //       title: Text(fruits_discount['fruits'][index]),
        //       subtitle: Text(fruits_discount['discount'][index]),
        //     ),);
        //   },
          
        // ),





        // child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
        // crossAxisSpacing: 20,
        // mainAxisSpacing: 20,
        // childAspectRatio: 2/3),
        // children: [
        //   Card(child: Center(child: Text('Mango')),
        //   ),
        //   Card(child: Center(child: Text('Mango')),
        //   ),
        //   Card(child: Center(child: Text('Mango')),
        //   ),
        //   Card(child: Center(child: Text('Mango')),
        //   ),
        //   Card(child: Center(child: Text('Mango')),
        //   ),
        // ],),


        child: GridView.builder(
          itemCount: fruits.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
          itemBuilder: (context, index){
          return Card(
            child: Center(child: Text(fruits[index])),
          );
        }),





      ),
    );
  }
}

//Column can have only size till mobile screen
//But List can have infine no of childs, scrollable function
//In 2/3 -- 2 is width and 3 is hright