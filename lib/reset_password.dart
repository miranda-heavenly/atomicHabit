import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(255, 243, 233, 1),
        appBar: AppBar(
          
          backgroundColor: Colors.transparent,
          leading: 
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: ClipOval(    
                child: Container(
                  color: Colors.grey.withAlpha(100),
                  child: Icon(Icons.arrow_back_rounded))),
            ),
          ),
        ),
        
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "FORGOT YOUR PASSWORD?",
                style: TextStyle(
                  fontFamily: 'Klasik',
                  fontSize: 24,
                  color: Color.fromRGBO(57, 33, 53, 1),
                ),
              ),
              Image(image: AssetImage('assets/password.png')),
              Material(
                child: Form(
                    
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                      Text(
                        "Enter your registered email below to receive password reset instruction",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Manrope',
                          fontSize: 14,
                          color: Color.fromRGBO(57, 33, 53, 1),
                        ),
                      ),
                      SizedBox(height: 30,),
                      TextFormField(
                        controller: TextEditingController(),
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Color.fromRGBO(255, 231, 212, 1),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            )),
                        style: TextStyle(color: Color.fromARGB(255, 254, 169, 0),),
                      ),
                      SizedBox(height: 10,),
                      ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Send reset password",
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                          style: ButtonStyle( 
                            minimumSize:MaterialStatePropertyAll(Size.fromHeight(60)),
                              shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              backgroundColor: MaterialStatePropertyAll(
                                Color.fromARGB(255, 254, 169, 0),
                              ))),
                                        ],
                                      ),
                    )),
              ),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                          fontFamily: 'Manrope',
                          fontSize: 16,
                          color: Color.fromRGBO(57, 33, 53, 1),
                        ),
                  children: [
                    TextSpan(
                      text: "Remember password? "
                    ),
                    TextSpan(
                      text: "Log in",
                      style: TextStyle(fontWeight: FontWeight.bold)
                    ),
                  ]
                ))
            ],
          ),
        ));
  }
}
