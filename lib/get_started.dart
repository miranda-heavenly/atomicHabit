// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "JOIN A SUPPORTIVE COMMUNITY",
            style: TextStyle(
                fontSize: 22,
                fontFamily: 'Klasik',
                color: Color.fromRGBO(57, 33, 53, 1),
                // fontWeight: FontWeight.bold,
                height: 1.5),
            textAlign: TextAlign.center,
            
          ),
          Container(
              // height: 480,
              child: Image.asset(
                'assets/community.png',
                fit: BoxFit.cover,
              )),
 
          Column(
            children: [
              RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      style: TextStyle(
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w700,
                        height: 1.5,
                        fontSize: 12,
                      ),
                      children: [
                        TextSpan(
                            text: 'WE ',
                            style:
                                TextStyle(color: Color.fromARGB(255, 87, 51, 83))),
                        TextSpan(
                            text: 'HELP YOU ',
                            style:
                                TextStyle(color: Color.fromARGB(255, 254, 169, 0))),
                        TextSpan(
                            text: 'BECOME A \nBETTER VERSION',
                            style:
                                TextStyle(color: Color.fromARGB(255, 87, 51, 83))),
                        TextSpan(
                            text: 'OF YOURSELF',
                            style:
                                TextStyle(color: Color.fromARGB(255, 254, 169, 0))),
                      ])),
                      
                     SizedBox(
                      height: 15,
                     ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                onPressed: (){}, 
                                child: Text("Get Started"),
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 254, 169, 0)),
                                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    
                                  ))
                                  ),),
                            ),
                          ],
                        ),
                      ),
            ],
          ),
        
        ],
      ),
    );
  }
}
