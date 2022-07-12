import 'package:flutter/material.dart';
class UserShope extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
        backgroundColor: Colors.deepPurple,
        appBar: AppBar(
        backgroundColor: Colors.black,
    ),
    body:CustomScrollView(
    slivers: [
    SliverToBoxAdapter(
    child: TabBar(
    tabs: [
      Tab(child: Text('XTRA', style: TextStyle(color: Colors.white),),),
      Tab(child: Text('Unlimited',style:TextStyle(color: Colors.white) ,),)
    ],
    ),
    )
    ],
    ),
    ),
    );

  }
}

