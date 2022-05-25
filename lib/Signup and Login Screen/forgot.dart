import 'package:flutter/material.dart';
import 'package:pritesh/Signup%20and%20Login%20Screen/login.dart';

class Forgot extends StatefulWidget {
  const Forgot({Key? key}) : super(key: key);

  @override
  State<Forgot> createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF3E9),
      body: Column(
        children: [
          SizedBox(
            height: 39,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Align(
                alignment: Alignment.topLeft,
                child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset("assest/ic_back.png"))),
          ),
          SizedBox(
            height: 24,
          ),
          Center(
            child: Text(
              'Forgot your password?',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 24,
                  color: Color(0xFF573353),
                  letterSpacing: -1,
                  fontFamily: 'Klasik'),
            ),
          ),
          SizedBox(
            height: 39,
          ),
          Image.asset("assest/ic_Frame.png"),
          SizedBox(
            height: 45,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 225,
              width: 374,
              decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                      'Enter your registered email below toreceive\n                    password reset instruction',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(0xFF573353),
                          fontFamily: 'Manrope'),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      height: 55,
                      width: 344,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12)),
                      child: TextField(
                        textAlignVertical: TextAlignVertical.top,
                        decoration: InputDecoration(
                          prefix: Image.asset('assest/ic_cross.png'),
                          hintText: 'Jonathansmth@gmail.com',
                          hintStyle: TextStyle(
                            fontFamily: 'Manrope',
                            color: Color(0xFFFDA758),
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                          filled: true,
                          fillColor: Color(0xFFFC9D45).withOpacity(0.10),
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
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Container(
                      height: 55,
                      width: 334,
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
                                builder: (context) => Forgot(),
                              ));
                        },
                        child: Text(
                          'Send Reset Link',
                          style: TextStyle(
                              color: Color(0xFF573353),
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              fontFamily: 'Manrope'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 90,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Remember password? ',
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Manrope',
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF573353)),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ));
                },
                child: Text(
                  ' Login',
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Manrope',
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF573353)),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
