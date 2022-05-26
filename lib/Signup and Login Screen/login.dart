import 'package:flutter/material.dart';
import 'package:pritesh/Signup%20and%20Login%20Screen/singup.dart';
import 'package:pritesh/color.dart';

import 'forgot.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assest/ic_qua.png'),
        Image.asset(
          'assest/ic_bg2.png',
        ),
        Positioned(
          top: 505,
          child: ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            child: Container(
              color: Colors.white,
              height: 356,
              width: 390,
              child: Column(
                children: [
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Log in with email",
                    style: TextStyle(
                      color: Color(0xFF573353),
                      decoration: TextDecoration.none,
                      fontFamily: 'Manrope',
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Divider(
                    thickness: 1,
                    color: Color(0xFFFFF3E9),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Material(
                    color: Color(0xFFFFFFFF),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        height: 56,
                        width: 374,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12)),
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: ImageIcon(
                              AssetImage('assest/ic_email.png'),
                              color: Color(0xFFFDA758),
                            ),
                            hintText: 'Jonathansmth@gmail.com',
                            hintStyle: TextStyle(
                                color: Color(0xFFFDA758),
                                fontSize: 16,
                                letterSpacing: -1,
                                fontWeight: FontWeight.w500),
                            filled: true,
                            fillColor: Color(0xFFFFF6ED),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide.none),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide.none),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide.none),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Material(
                    color: Color(0xFFFFFFFF),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        height: 56,
                        width: 374,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12)),
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: ImageIcon(
                              AssetImage('assest/ic_lock.png'),
                              color: Color(0xFF573353).withOpacity(0.50),
                            ),
                            hintText: 'Password',
                            hintStyle: TextStyle(
                              fontFamily: 'Manrope',
                              color: Color(0xFF573353).withOpacity(0.50),
                              fontSize: 16,
                              letterSpacing: -1,
                            ),
                            suffix: Text(
                              'Show',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  decoration: TextDecoration.underline,
                                  color: Color(0xFF573353)),
                            ),
                            filled: true,
                            fillColor: Color(0xFFFFF6ED),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide.none),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide.none),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide.none),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 21,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: 55,
                      width: 374,
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(8)),
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Color(0xFFFDA758))),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SingUpScreen(),
                              ));
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(
                              color: Color(0xFF573353),
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              fontFamily: 'Manrope'),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Forgot(),
                          ));
                    },
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                        color: Color(0xFF573353),
                        decoration: TextDecoration.none,
                        fontFamily: font.Manrope,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don’t have an account?',
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: font.Manrope,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF573353)),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SingUpScreen(),
                              ));
                        },
                        child: Text(
                          ' Sign up',
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: font.Manrope,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF573353)),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
            top: 28,
            left: 320,
            right: 10,
            child: Image.asset('assest/ic_q.png')),
        Positioned(
          top: 285,
          left: 32,
          child: Text(
            '            WELCOME TO \n     MONUMENTAL HABITS',
            style: TextStyle(
                color: Color(0xFF573353),
                letterSpacing: -3,
                fontWeight: FontWeight.w400,
                fontSize: 32,
                fontFamily: 'Klasik',
                decoration: TextDecoration.none),
          ),
        ),
        Positioned(
          top: 379,
          left: -3,
          right: -3,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Image.asset(
                  'assest/ic_Button.png',
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Positioned(
                  top: 390,
                  left: -3,
                  right: -3,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Image.asset('assest/ic_Facebook.png'),
                  ))
            ],
          ),
        ),
      ],
    );
  }
}
