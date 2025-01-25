import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';



class CashedImg extends StatelessWidget {
  const CashedImg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cashed Image')),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          child: CachedNetworkImage(
           imageUrl : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqlW5qSxZUmGuvKQvpeO4U4FM-eSyv-85Aqw&s',
           placeholder : (context,url) => Center(child: CircularProgressIndicator()),
           errorWidget: (context, url, error) => Icon(Icons.error),
          ),
        ),
      ),
    );
  }
}