import 'package:flutter/material.dart';
import 'package:pritesh/Signup%20and%20Login%20Screen/forgot.dart';
import 'package:pritesh/Signup%20and%20Login%20Screen/login.dart';

class SingUpScreen extends StatefulWidget {
  const SingUpScreen({Key? key}) : super(key: key);

  @override
  State<SingUpScreen> createState() => _SingUpScreenState();
}

class _SingUpScreenState extends State<SingUpScreen> {
  bool one = false;
  bool second = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF3E9),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 48,
            ),
            Image.asset("assest/ic_ca.png"),
            SizedBox(
              height: 21,
            ),
            Text(
              'CREATE YOUR ACCOUNT',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 24,
                  color: Color(0xFF573353),
                  letterSpacing: -1,
                  fontFamily: 'Klasik'),
            ),
            SizedBox(
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 57,
                width: 374,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(12)),
                child: TextField(
                  textAlignVertical: TextAlignVertical.top,
                  textAlign: TextAlign.justify,
                  decoration: InputDecoration(
                    prefixIcon: ImageIcon(
                      AssetImage('assest/ic_user.png'),
                      color: Color(0xFFFDA758),
                    ),
                    prefix: Image.asset('assest/ic_cross.png'),
                    hintText: 'Mira Passaquindici',
                    hintStyle: TextStyle(
                      //   fontFamily: 'Manrope',
                      color: Color(0xFFFDA758),
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
                    fillColor: Color(0xFFFFFFFF),
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
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 57,
                width: 374,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(12)),
                child: TextField(
                  textAlignVertical: TextAlignVertical.top,
                  textAlign: TextAlign.justify,
                  decoration: InputDecoration(
                    prefixIcon: ImageIcon(
                      AssetImage('assest/ic_email.png'),
                      color: Color(0xFF573353).withOpacity(0.50),
                    ),
                    prefix: Image.asset('assest/ic_cross.png'),
                    hintText: 'Email',
                    hintStyle: TextStyle(
                      fontFamily: 'Manrope',
                      color: Color(0xFF573353).withOpacity(0.50),
                      fontSize: 16,
                      letterSpacing: -1,
                      fontWeight: FontWeight.w500,
                    ),
                    filled: true,
                    fillColor: Color(0xFFFFFFFF),
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
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 57,
                width: 374,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(12)),
                child: TextField(
                  textAlignVertical: TextAlignVertical.top,
                  textAlign: TextAlign.justify,
                  decoration: InputDecoration(
                    prefixIcon: ImageIcon(
                      AssetImage('assest/ic_lock.png'),
                      color: Color(0xFF573353).withOpacity(1),
                    ),
                    prefix: Image.asset('assest/ic_cross.png'),
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      fontFamily: 'Manrope',
                      color: Color(0xFF573353).withOpacity(0.50),
                      fontSize: 16,
                      letterSpacing: -1,
                      fontWeight: FontWeight.w500,
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
                    fillColor: Color(0xFFFFFFFF),
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
            // Chechbox//
            Padding(
              padding: const EdgeInsets.only(left: 23),
              child: Row(
                children: [
                  Checkbox(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(6))),
                      checkColor: Color(0xFF573353),
                      fillColor: MaterialStateProperty.all(Color(0xFFFDA758)),
                      value: one,
                      onChanged: (value) {
                        setState(() {
                          one = value!;
                        });
                      }),
                  Text(
                    'Keep me signed in',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Color(0xFF573353),
                        fontFamily: 'Manrope'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 23),
              child: Row(
                children: [
                  Checkbox(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(6))),
                      checkColor: Color(0xFF573353),
                      fillColor: MaterialStateProperty.all(Color(0xFFFDA758)),
                      value: second,
                      onChanged: (value) {
                        setState(() {
                          second = value!;
                        });
                      }),
                  Text(
                    'Email me about special pricing and more',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Color(0xFF573353),
                        fontFamily: 'Manrope'),
                  ),
                ],
              ),
            ),

            // Button
            SizedBox(
              height: 14,
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
                          builder: (context) => Forgot(),
                        ));
                  },
                  child: Text(
                    'Create Account',
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
              height: 2,
            ),
            Row(children: <Widget>[
              Expanded(
                child: new Container(
                    margin: const EdgeInsets.only(left: 10.0, right: 15.0),
                    child: Divider(
                      color: Color(0xFF573353).withOpacity(0.20),
                      height: 50,
                    )),
              ),
              Text(
                "Or sign in with",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                    color: Color(0xFF573353),
                    fontFamily: 'Manrope'),
              ),
              Expanded(
                child: new Container(
                    margin: const EdgeInsets.only(left: 15.0, right: 10.0),
                    child: Divider(
                      color: Color(0xFF573353).withOpacity(0.20),
                      height: 50,
                    )),
              ),
            ]),

            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Container(
                    height: 45,
                    width: 175,
                    decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(12)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 7,
                          ),
                          child: Image.asset("assest/ic_google.png"),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Text(
                          "Google",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Color(0xFF573353),
                              fontFamily: 'Manrope'),
                        ),
                      ],
                    )),
                SizedBox(
                  width: 12,
                ),
                Container(
                    height: 45,
                    width: 170,
                    decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(12)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(child: Image.asset("assest/ic_qua.png")),
                        SizedBox(
                          width: 16,
                        ),
                        Text(
                          "Facebook",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Color(0xFF573353),
                              fontFamily: 'Manrope'),
                        ),
                      ],
                    )),
                SizedBox(
                  width: 5,
                ),
              ],
            ),
            SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account? ',
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
                    ' Sign In',
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
      ),
    );
  }
}
