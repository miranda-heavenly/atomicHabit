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
        height: 350,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  offset: Offset(2, 4),
                  blurRadius: 5,
                  spreadRadius: 2)
            ],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            )),
        child: SingleChildScrollView(
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
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              )),
                          validator: (value) {},
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          controller: TextEditingController(),
                          obscureText: true,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock_outlined),
                              suffixText: 'Show',
                              labelText: 'Password',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          validator: (value) {},
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: SizedBox(
                                height: 50,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushNamedAndRemoveUntil(
                                        context, '/home', (route) => false);
                                  },
                                  child: Text(
                                    "Login",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all(
                                          Color.fromARGB(255, 254, 169, 0)),
                                      shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ))),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: Row(
                  children: [
                    Text(
                      "New to Atomic Habits?",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontFamily: 'Manrope'),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/signup');
                        },
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.black,
                            fontFamily: 'Manrope',
                          ),
                        ))
                  ],
                ),
              )
            ],
          ),
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
          // alignment: Alignment.bottomCenter,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.center,
              colors: [
                Color.fromRGBO(0, 0, 0, 0),
                Color.fromRGBO(255, 243, 233, 1),
                //  const Color.fromRGBO(255, 255, 255, 1)
              ],
              //  stops: [0.25, 0.7, 0.2],
            ),
          ),

          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 250,
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
                Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: ElevatedButton.icon(
                        onPressed: () {
                          // Navigator.pushNamed(context, 'routeName');
                        },
                        icon: Image.asset(
                          "assets/google1.png",
                          width: 24,
                        ),
                        label: Text(
                          "Continue with Google",
                          style: TextStyle(
                            color: Color.fromRGBO(57, 33, 53, 1),
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        style: ButtonStyle(
                            elevation: MaterialStateProperty.all(0),
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            padding: MaterialStateProperty.all(
                                EdgeInsets.symmetric(vertical: 20))),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: Image.asset(
                          "assets/facebook1.png",
                          width: 24,
                        ),
                        label: Text(
                          "Continue with Facebook",
                          style: TextStyle(
                            color: Color.fromRGBO(57, 33, 53, 1),
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        style: ButtonStyle(
                            elevation: MaterialStateProperty.all(0),
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            padding: MaterialStateProperty.all(
                                EdgeInsets.symmetric(vertical: 20))),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
