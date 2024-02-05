// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool firstOptionSelected = false;
  bool secondOptionSelected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      color: Color.fromRGBO(255, 243, 233, 1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Padding(padding: EdgeInsets.symmetric(vertical: 20)),
          Image(image: AssetImage('assets/Create Your Account.png')),
          Text("CREATE YOUR ACCOUNT",
          style: TextStyle(
            fontSize: 24, 
            color: Color.fromRGBO(57, 33, 53, 1),
            fontFamily: 'klasik'),),
          Material(
            color: Colors.transparent,
            child: Form(
              key: GlobalKey<FormState>(),
                child: Column(
                  
                  children: [
                    TextFormField(
                      controller: TextEditingController(),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),),
                        prefixIcon: Icon(Icons.account_circle_outlined),    
                        labelText: 'User Name',
                        prefixIconConstraints: BoxConstraints(minWidth: 60), // Ensure icon space
                         ),
                    ),
                    SizedBox(height: 10,),
                     TextFormField(
                      controller: TextEditingController(),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),),
                        prefixIcon: Icon(Icons.email_outlined),    
                        labelText: 'Email',
                        prefixIconConstraints: BoxConstraints(minWidth: 60), // Ensure icon space
                         ),
                    ),
                     SizedBox(height: 10,),
                     TextFormField(
                      controller: TextEditingController(),
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),),
                        prefixIcon: Icon(Icons.lock_outline),    
                        labelText: 'Password',    
                        prefixIconConstraints: BoxConstraints(minWidth: 60), // Ensure icon space
                         ),
                    ),
                    SizedBox(height: 20,),
                    CheckboxListTile(
                      value: firstOptionSelected, 
                      onChanged: (value){
                        setState(() {
                          firstOptionSelected = value!;
                        });
                      },
                     title: Text("Keep me signed in"),
                     activeColor: Color.fromARGB(255, 254, 169, 0),
                     controlAffinity: ListTileControlAffinity.leading,
                      ),
                      CheckboxListTile(
                        value: secondOptionSelected, 
                        onChanged: (value){
                          setState(() {
                            secondOptionSelected = value!;
                          });
                        },
                        title: Text("Email me about special pricing"),
                        activeColor: Color.fromARGB(255, 254, 169, 0),
                        controlAffinity: ListTileControlAffinity.leading,
                        ),
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: (){
                          Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false);
                        }, 
                        child: Text("Sign up", style: TextStyle(fontSize: 18, color: Colors.black),),
                        style: ButtonStyle(
                          shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                          backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 254, 169, 0),)
                          )
                        ),
                    ),                 
                  ],
                ),
              ),
          ),
         
              Stack(
                alignment: Alignment.center,
                children: [
                  Divider(
                       color: Colors.black.withAlpha(100),  
                          ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    color: Color.fromRGBO(255, 243, 233, 1),
                    child: Text("Or sign in with", textAlign: TextAlign.center,
                    style:TextStyle(fontSize: 14, color: Colors.grey[600],fontFamily: 'Manrope', fontWeight: FontWeight.w600 ) ,),
                  )
                ],
               
              ),
            
          
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                onPressed: (){}, 
                icon: Image.asset("assets/google1.png", width: 24,), 
                label: Text("Google"),
                style: ButtonStyle(
                  elevation:MaterialStatePropertyAll(3),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)))
                ),       
                ),
                SizedBox(width: 20,),
                 ElevatedButton.icon(
                onPressed: (){}, 
                icon: Image.asset("assets/facebook1.png", width: 24,), 
                label: Text("Facebook"),
                style: ButtonStyle(
                  elevation: MaterialStatePropertyAll(3),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)))
                ),
                )
            ],
          ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                    children: [
                      Text("Already have an account?", style: TextStyle(fontSize: 16, color: Colors.black,fontFamily: 'Manrope', fontWeight: FontWeight.w600),),
                      TextButton(
                        onPressed:(){ Navigator.pushNamed(context, '/home');}, 
                        child: Text("Sign in", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black, fontFamily: 'Manrope',),))
                    ],
                  ),
            )
        ],
      ),

    );
  }
}