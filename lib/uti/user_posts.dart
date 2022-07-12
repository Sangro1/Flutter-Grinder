import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserPosts extends StatelessWidget {

  final String name;
  UserPosts({required this.name });
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
    Padding(
    padding: const EdgeInsets.all(16.0),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children:[
    //profile photo
    Row(
    children: [
    Container(width: 40,height: 40,
    decoration: BoxDecoration(color: Colors.yellow[300], shape:BoxShape.circle
    ),
    ),
    SizedBox(
    width: 10,
    ),
    //name
    Text(name,style:TextStyle(fontWeight:FontWeight.bold)
    ),
    ],
    ),
    Icon(Icons.menu),
    ],
    ),
    ),

    //post

    Container(
    height: 300,
    color: Colors.grey[300],
    ),

    //below the post icons and buttons
    Padding(
    padding: const EdgeInsets.all(16.0),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Row(
    children: [
    Icon(Icons.favorite),
    Padding(
    padding: const EdgeInsets.symmetric(horizontal: 12.0),
    child: Icon(Icons.chat_bubble_outline),
    ),
    Icon(Icons.share),
    ],
    ),
    Icon(Icons.bookmark),
    ],
    ),
    ),
    //comments //liked by
    Padding(
    padding: const EdgeInsets.only(left: 16.0),
    child: Row( children:[
    Text('Liked by'),
    Text(
    ' Nikil',
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
       Text('  and'),
      Text(
        ' others',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    ]),
    ),
          //caption
          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 8),
          child: RichText(
            text: TextSpan(
              style: TextStyle(color: Colors.black),
              children:[
                TextSpan(text: 'Nikhil',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'I am stuck in the coding please help me to slove this data structure question'),
              ]
            ),
          ),
          )
          //comments


        ],
    );
  }
}
