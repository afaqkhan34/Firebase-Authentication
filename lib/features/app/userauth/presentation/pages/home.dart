import 'package:flutter/material.dart';

import '../widgets/global/toast.dart';
import 'login_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text('HomePage',style: TextStyle(
          fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
        ),

        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children :[
            const Text('Welcome To Home',style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w600,
            fontStyle: FontStyle.italic,
          ),),
        const SizedBox(height: 10,),
        GestureDetector(

          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()));
            showToast(message: 'User successfully logged out');
          },

          child: Container(
            padding: const EdgeInsetsDirectional.symmetric(horizontal: 30, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue,
            ),
            child: const Text('Sign Out',style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              backgroundColor: Colors.blue,

            ),),
          ),

        ),

          ],


        ),
      ),

    );
  }
}
