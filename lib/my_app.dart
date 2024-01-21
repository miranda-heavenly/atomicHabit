import 'package:flutter/material.dart';
import 'package:onboarding_screen/get_started.dart';
import 'package:onboarding_screen/intro_slider.dart';
import 'package:onboarding_screen/login_page.dart';
import 'package:onboarding_screen/my_home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
  
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LoginPage(),
    );
  }
}