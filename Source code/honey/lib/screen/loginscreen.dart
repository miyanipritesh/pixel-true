import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:honey/screen/signUpscreen.dart';

import '../Service/FirebaseAuthHelper.dart';
import '../page/homePage.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final validate = GlobalKey<FormState>();

  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0B0B45),
      body: ListView(
        children: [
          SizedBox(
            height: 40,
          ),
          Container(
              height: 80,
              width: 80,
              child: Image.asset(
                'assets/images/img_app_logo.png',
              )),
          SizedBox(
            height: 80,
          ),
          Form(
            key: validate,
            child: Container(
              height: 650,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    bottomRight: Radius.circular(35),
                  )),
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    'LOGIN',
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: TextFormField(
                      validator: (value) {
                        if (EmailValidator.validate(value!) &&
                            value.isNotEmpty) {
                          return null;
                        }
                        return 'Please enter some text';
                      },
                      controller: emailcontroller,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: 'Email',
                        suffixIcon: Icon(
                          Icons.mail_outline,
                          color: Colors.black54,
                        ),
                        focusColor: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: TextFormField(
                      controller: passwordcontroller,
                      decoration: InputDecoration(
                        hintText: 'password',
                        suffixIcon: Icon(
                          Icons.home_outlined,
                          color: Colors.black54,
                          size: 30,
                        ),
                        focusColor: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: InkWell(
                        onTap: () {},
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  Container(
                    height: 50,
                    width: 190,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            )),
                            backgroundColor: MaterialStateProperty.all(
                                Colors.green.shade300)),
                        onPressed: () async {
                          if (validate.currentState!.validate()) {
                            FirebaseAuthHelper().signIn(
                                emailcontroller.text, passwordcontroller.text);
                            FirebaseAuthHelper.showLoadingDialog(context);
                            await Future.delayed(const Duration(seconds: 2));
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomePage(),
                                ));
                          } else {
                            Fluttertoast.showToast(
                                msg: 'Enter missing details');
                          }
                        },
                        child: Text(
                          'LOGIN',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        )),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    height: 50,
                    width: 190,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            )),
                            backgroundColor:
                                MaterialStateProperty.all(Color(0xff0B0B45))),
                        onPressed: () {},
                        child: Text(
                          'INVITE',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        )),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Divider(
                      color: Colors.black,
                      thickness: 1,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Dont\'t have an account? ',
                        style: TextStyle(color: Colors.black54, fontSize: 12),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SighUpScreen(),
                              ));
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(color: Colors.black54, fontSize: 13),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Or Login in with',
                    style: TextStyle(color: Colors.black54, fontSize: 12),
                  ),
                  SizedBox(
                    height: 23,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () async {
                          await FirebaseAuthHelper.googleSignIn(
                              context: context);

                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomePage(),
                              ));
                        },
                        child: Image.asset(
                          'assets/images/ic_login_google_plus.png',
                          height: 45,
                          width: 45,
                        ),
                      ),
                      SizedBox(
                        width: 23,
                      ),
                      Image.asset(
                        'assets/images/ic_login_facebook.png',
                        height: 45,
                        width: 45,
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
