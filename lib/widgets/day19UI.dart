import 'package:flutter/material.dart';

class day19UI extends StatefulWidget {
  const day19UI({super.key});

  @override
  State<day19UI> createState() => _day19UIState();
}

class _day19UIState extends State<day19UI> {
  
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(child: Container(
                  height: 500, // (h/2)
                  //color: Colors.yellow,
                  child: Stack(
                    children: [
                      Positioned(child: Container(
                        decoration: const BoxDecoration(
                          //color: Colors.red,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage('https://amoslighting.co.uk/cdn/shop/files/moooi-random-small-white-pendant-chandelier-amos-lighting-home.jpg?v=1724778804&width=800'))
                        ),
                        height: 450)),
                      const Positioned(bottom: 0,right: 24,child: CircleAvatar(
                        backgroundImage: NetworkImage('https://i.pinimg.com/originals/be/a3/49/bea3491915571d34a026753f4a872000.jpg'),
                        radius: 50))
                    ],
                  ),
                )),
              ],
            ),

            Container(
                  padding: EdgeInsets.all(10),
                  //color: Colors.blue,
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: 
                    [Text('Madrid City Tour for Designers',style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),

                    SizedBox(height: 10),

                    Text('50K Views, 5 hours ago',style: TextStyle(fontSize: 15, color: Colors.grey))
                    
                    ],),
                ),

            Container(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                rowIconText('5K', Icons.favorite_border_outlined),
                rowIconText('2K', Icons.thumb_up),
                rowIconText('', Icons.thumb_down),
                rowIconText('500', Icons.message)

              ],
            ),
            ),

            Divider(),

            Container(
              padding: EdgeInsets.all(10),
              child: SingleChildScrollView(child: Text("In the first place we have granted to God, and by this our present charter confirmed for us and our heirs forever that the English Church shall be free, and shall have her rights entire, and her liberties inviolate; and we will that it be thus observed; which is apparent from this that the freedom of elections, which is reckoned most important and very essential to the English Church.")),
            )

          ],
        ),
      ),
    );
  }

  Widget rowIconText(String text, IconData icon){
    return Row(children: [
                  Text('$text ', style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Icon(icon)
                ]);
  }
}