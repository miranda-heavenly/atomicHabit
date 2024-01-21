// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 320,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.5),
            offset: Offset(2, 4),
            blurRadius: 5,
            spreadRadius: 2
            )
            ],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            )),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 10),
              child: Text(
                "Login with email",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),
            ),
            Divider(
              thickness: 1,
              color: const Color.fromARGB(255, 224, 224, 224),
            ),
            Form(
              key: GlobalKey<FormState>(),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    TextFormField(
                      controller: TextEditingController(),
                      decoration: InputDecoration(
                       prefixIcon: Icon(Icons.email_outlined),
                        labelText: 'Email', 
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), )),
                      validator: (value) {},
                    ),
                    SizedBox(height: 10,),
                      TextFormField(
                      controller: TextEditingController(),
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock_outlined),
                        suffixText: 'Show',
                        labelText: 'Password', 
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
                      validator: (value) { },
                    ),
                    SizedBox(height: 20,),
                    Row(
                          children: [
                            Expanded(
                              child: SizedBox(
                                height: 50,
                                child: ElevatedButton(
                                  onPressed: (){}, 
                                  child: Text("Login", style: TextStyle(fontSize: 18),),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 254, 169, 0)),
                                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),                                 
                                    ))
                                    ),),
                              ),
                            ),
                          ],
                        ),
                  ],
                ),
              ))
          ],
        ),
      ),
      body: Stack(children: [
        Container(
          height: 400,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/Splash Screen.png'),
            fit: BoxFit.cover,
            
            // alignment: Alignment.topRight,
          )),
        ),
        Container(
          //  color: Colors.transparent,
          height: 700,
          alignment: Alignment.bottomCenter,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.center,
              colors: [
                Color.fromRGBO(0, 0, 0, 0),
                Color.fromRGBO(255, 243, 233, 1),
                //  const Color.fromRGBO(255, 255, 255, 1)
              ],
              //  stops: [0.25, 0.1, ],
            ),
          ),

          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 300,
              ),
              Text(
                "WELCOME TO ATOMIC HABITS",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(57, 33, 53, 1),
                    fontWeight: FontWeight.bold,
                    fontSize: 36,
                    fontFamily: 'klasik'),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                child: ElevatedButton(
                    onPressed: () {},

                    //  style: ButtonStyle(
                    //   shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.circular(5),
                    //   ))
                    //   )

                    style: ElevatedButton.styleFrom(
                      elevation: 0, // Remove shadow
                      minimumSize: Size(double.infinity, 60),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.gesture),
                        //  Image.asset("assets/google.google.png", width: 10,) ,
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Continue with Google",
                          // textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromRGBO(57, 33, 53, 1),
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    )),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                child: ElevatedButton(
                    onPressed: () {},

                    //  style: ButtonStyle(
                    //   shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.circular(5),
                    //   ))
                    //   )

                    style: ElevatedButton.styleFrom(
                      elevation: 0, // Remove shadow
                      minimumSize: Size(double.infinity, 60),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.face),
                        //  Image.asset("assets/facebook.png", width: 10,) ,
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Continue with Facebook",
                          // textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromRGBO(57, 33, 53, 1),
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
