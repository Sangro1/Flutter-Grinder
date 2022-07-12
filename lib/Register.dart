import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        // backgroundColor:Colors.black26,
        appBar: AppBar(
          elevation: 23,
          backgroundColor: Colors.black26,
          title: Text("Sign Up",style: TextStyle(color: Colors.yellow,),),
        ),
        body:CustomScrollView(
          slivers:<Widget> [
            SliverToBoxAdapter(
              child: SafeArea(
                child: Image.asset('assets/images/logo.webp',width: 30,height: 47),
              ),
            ),
            SliverToBoxAdapter(
              child: TabBar(
                  tabs: [
                    Tab(
                      child:Text('Email',
                        style: TextStyle(color: Colors.black),)
                      ,),
                    Tab(
                      child:Text('Phone',
                        style: TextStyle(color: Colors.black),),), ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class SignIn extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(controller: emailController,
            decoration: InputDecoration(
              labelText:'Email',
            ),
          ),
          TextField(controller: passwordController,
            decoration: InputDecoration(
              labelText: 'Password',

            ),
          ),

          ElevatedButton(onPressed: (){

          }, child:Text("Sign in")
          )
        ],
      ),
    );
  }
}


