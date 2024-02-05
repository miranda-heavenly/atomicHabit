// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/Splash Screen.png'),
          fit: BoxFit.fill,
          ),
       ),
       padding: EdgeInsets.only(top: 100),
       child: Text("WELCOME TO \nATOMIC HABITS",
       textAlign:TextAlign.center, 
       style: TextStyle(
        color: Colors.black, 
        fontWeight: FontWeight.bold,
        fontSize: 32),),

    );
  }
}
