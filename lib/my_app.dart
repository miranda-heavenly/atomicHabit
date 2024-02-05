import 'package:flutter/material.dart';
import 'package:onboarding_screen/get_started.dart';
import 'package:onboarding_screen/home_page.dart';
import 'package:onboarding_screen/intro_slider.dart';
import 'package:onboarding_screen/login_page.dart';
import 'package:onboarding_screen/reset_password.dart';
import 'package:onboarding_screen/signup_page.dart';

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
      initialRoute: "/splash",
      routes: <String, WidgetBuilder>{
        "/login":(context) => const LoginPage(),
        "/signup":(context) => const SignUpPage(),
        "/home":(context) => const HomePage(),
        "/splash":(context) => const IntroSlider(),
        "/getstarted":(context) => const GetStarted()
      }
    );
  }
}