

import 'package:flutter/cupertino.dart';

class ShopGride extends StatelessWidget {
  const ShopGride({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 30,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context,index){
          return Padding(
              padding: const EdgeInsets.all(5.0));
      },
        
         );
  }
}
