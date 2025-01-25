import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/animated_text.dart';
import 'package:flutter_application_1/widgets/cashed_img.dart';
import 'package:flutter_application_1/widgets/dismissableWidget.dart';
import 'package:flutter_application_1/widgets/snackbar.dart';


// void onItemTapped(int index){

// }  //Put this function inside STL class.
//we need to change in STFull widget for Bottom Nav


class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {

int selectedIndex = 0;
PageController pageController = PageController();



List<Widget> widgets = [
  Text('Home'),
  Text('Search'),
  Text('Add'),
  Text('Profile')
];


  void onTapped(int index){
    setState(() {
      selectedIndex = index;
    });
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text('Bottom Nav')),
      
      
      //body: Center(child: widgets.elementAt(selectedIndex)),
      body: PageView(controller: pageController, children: [
        AnimatedTextWidget(),
        CashedImg(),
        SnackbarWidget(),
        Dismissablewidget()
      ]),

      bottomNavigationBar: BottomNavigationBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add'),
        BottomNavigationBarItem(icon: Icon(Icons.account_box), label: 'Profile')
      ],
      currentIndex: selectedIndex,
      selectedItemColor: Colors.green,
      unselectedItemColor: Colors.grey,
      onTap: onTapped,
      
      ),
    );
  }
}