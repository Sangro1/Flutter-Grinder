import 'package:flutter/material.dart';
import '../uti/bubble_stories.dart';
import '../uti/user_posts.dart';

class UserHome extends StatelessWidget {
  //to make dynamic list with listview builder
  //final List people = [Ajay,Nikhil,Durgesh,Tressa]
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Icon(Icons.account_circle_sharp),
    Text('Browse',style:TextStyle(color: Colors.black),
    ),

    Row(
    children: [
    Icon(Icons.remove_red_eye_sharp,),
    Padding(
    padding: const EdgeInsets.all(24.0),
    child:  Icon(Icons.settings_input_composite_outlined),
    ),
    ],)

    ],),
    ),
    body: Column(
    children: [
    //stories
    Container(
    height: 130,
    //child: ListView.builder(scrollDirection: Axis.horizontal,itemCount: people.length,itemBuilder:(context, index){
    // return BubbleStories(text:people[index]);
    child: ListView(
    scrollDirection: Axis.horizontal,
    children: [
    BubbleStories(text: 'Ajay',),
    BubbleStories(text: 'Durgesh',),
    BubbleStories(text: 'Nikhil',),
    BubbleStories(text: 'Tressa',),
    BubbleStories(text: 'Pradhuman',),
    BubbleStories(text: 'dhuman',),
    BubbleStories(text: 'Prad',),
    BubbleStories(text: 'human',),

    ],
    ),
    ),
      //posts
      UserPosts(name:'Ajay',),
    ],
    ),
    );
  }
}


