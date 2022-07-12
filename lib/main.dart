import 'package:flutter/material.dart';
import 'package:grinder/pages/account.dart';
import 'package:grinder/pages/browse.dart';

import 'Register.dart';
import 'home.dart';

void main() {
  runApp(const MyApp(
  ));
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegisterPage(),
      theme: ThemeData(primarySwatch:Colors.grey),
    );
  }
}
