// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:introduction_slider/introduction_slider.dart';
import 'package:onboarding_screen/get_started.dart';
import 'package:onboarding_screen/my_home_page.dart';

class IntroSlider extends StatefulWidget {
  const IntroSlider({super.key});

  @override
  State<IntroSlider> createState() => _IntroSliderState();
}

class _IntroSliderState extends State<IntroSlider> {
  @override
  Widget build(BuildContext context) {
    return IntroductionSlider(
  items: [  
    IntroductionSliderItem(
      logo: Column(
        children: [
         Text("WELCOME TO ATOMIC HABITS", 
        style: TextStyle(fontSize: 38, color: Color.fromRGBO(57, 33, 53, 1), fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,   
                ),
          Image.asset('assets/intro1.png'),
        ],
      ),
          backgroundColor: Colors.white,
          title: Expanded(
            child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontWeight: FontWeight.w700,
                    height: 1.5,
                    // fontSize: 24,
                  ),
                  children: [
                    TextSpan(text: 'WE ', style: TextStyle(color: Color.fromARGB(255, 87, 51, 83))),
                    TextSpan(text: 'HELP YOU ', style: TextStyle(color: Color.fromARGB(255, 254, 169, 0))),
                    TextSpan(text: 'BECOME A \nBETTER VERSION', style: TextStyle(color: Color.fromARGB(255, 87, 51, 83))),
                    TextSpan(text: 'OF YOURSELF', style: TextStyle(color: Color.fromARGB(255, 254, 169, 0))),
                  ],
              ),
              ),
          ),
      
    ),
    IntroductionSliderItem(
     logo: Column(
        children: [
          Text("BUILD NEW HABITS EASILY", 
        style: TextStyle(fontSize: 38, color:  Color.fromRGBO(57, 33, 53, 1), fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,   
                ),
          Container(
            height: 487,
            child: Image.asset('assets/intro2.png', fit: BoxFit.cover,)),
        ],
      ),
      
        backgroundColor: Colors.white,
          title: Expanded(
            child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontWeight: FontWeight.w700,
                    height: 1.5,
                    // fontSize: 24,
                  ),
                  children: [
                    TextSpan(text: 'WE ', style: TextStyle(color: Color.fromARGB(255, 87, 51, 83))),
                    TextSpan(text: 'HELP YOU ', style: TextStyle(color: Color.fromARGB(255, 254, 169, 0))),
                    TextSpan(text: 'BECOME A \nBETTER VERSION', style: TextStyle(color: Color.fromARGB(255, 87, 51, 83))),
                    TextSpan(text: 'OF YOURSELF', style: TextStyle(color: Color.fromARGB(255, 254, 169, 0))),
                  ],
              ),
              ),
          ),
    ),
    IntroductionSliderItem(
      logo: Column(
        children: [
          Text("KEEP TRACK OF YOUR PROGRESS", 
        style: TextStyle(fontSize: 38, color: Color.fromRGBO(57, 33, 53, 1), fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,   
                ),
          Container(
            height: 487,
              child: Image.asset('assets/intro3.png', fit: BoxFit.cover,)),
        ],
      ),
      
        backgroundColor: Colors.white,
          title: Expanded(
            child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontWeight: FontWeight.w700,
                    height: 1.5,
                    // fontSize: 24,
                  ),
                  children: [
                    TextSpan(text: 'WE ', style: TextStyle(color: Color.fromARGB(255, 87, 51, 83))),
                    TextSpan(text: 'HELP YOU ', style: TextStyle(color: Color.fromARGB(255, 254, 169, 0))),
                    TextSpan(text: 'BECOME A \nBETTER VERSION', style: TextStyle(color: Color.fromARGB(255, 87, 51, 83))),
                    TextSpan(text: 'OF YOURSELF', style: TextStyle(color: Color.fromARGB(255, 254, 169, 0))),
                  ],
              ),
              ),
          ),
    ),
  ],
  done: Done(
    child: Icon(Icons.done),
    home: GetStarted(),
  ),
  next: Next(child: Icon(Icons.arrow_forward)),
  back: Back(child: Icon(Icons.arrow_back)),
  dotIndicator: DotIndicator(),
);
  }
}