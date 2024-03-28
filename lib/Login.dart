import 'package:flutter/material.dart';

import 'Dashboard.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final FormField = GlobalKey<FormState>();
  final EmailController = TextEditingController();
  final PasswordController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    EmailController.dispose();
    PasswordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 291,
                width: 415,
                color: Color(0xff7FC4DC),
              ),
              Positioned(
                top: 154,
                left: 40,
                child: Container(
                  width: 327,
                  height: 489,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5,
                          offset: Offset(
                            1.0,
                            1.0,
                          ),
                          spreadRadius: 1,
                        ),
                      ]),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 30),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Login Account",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff1E263C),
                              fontSize: 26),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Login With Mobile Number & M-Pin",
                          style:
                              TextStyle(fontSize: 14, color: Color(0xff6B7285)),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Form(
                            child: Column(
                              children: [
                                TextFormField(
                                  controller: EmailController,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.phone),
                                    hintText: "Enter Your Email",
                                    prefixIconColor: Color(0xffB9BAC8),
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                TextField(
                                  keyboardType: TextInputType.visiblePassword,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.lock),
                                    hintText: "Enter Your Password",
                                    prefixIconColor: Color(0xffB9BAC8),
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                                SizedBox(height: 5),
                                TextField(
                                  keyboardType: TextInputType.visiblePassword,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.lock),
                                    hintText: "Enter Your Confirm Password",
                                    prefixIconColor: Color(0xffB9BAC8),
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Dashboard()),
                            );
                          },
                          child: Container(
                            height: 52,
                            width: 287,
                            decoration: BoxDecoration(
                              color: Colors.lightBlue,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Submit",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // Positioned(
              //   top: -24,
              //   left: -39,
              //   // right: -10,
              //   // bottom: -10 ,
              //   child: Container(
              //     width: 253,
              //     height: 253,
              //     decoration: BoxDecoration(
              //         color: Color(0xff8CCADF),
              //         borderRadius: BorderRadius.circular(200),
              //        ),
              //   ),
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
