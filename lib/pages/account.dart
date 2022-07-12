import 'package:flutter/material.dart';
class UserAccount extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [

          Row(
            children: [
              Container(
                height:50, width: 50,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  shape:BoxShape.circle,
                ),
              )


          ],

          )
        ],
      ),
    );
  }
}
