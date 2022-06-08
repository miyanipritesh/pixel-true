import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Firebase Helper/authntication_Helper.dart';
import '../Firebase Helper/google_signin_helper.dart';
import '../constant.dart';
import 'SignupScreen.dart';
import 'forgotPassword.dart';
import 'homeScreen.dart';

TextEditingController password = TextEditingController();

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isvalid = false;
  bool isvisible = false;
  bool passwordvalid = true;
  late FocusNode _focusNode1;
  late FocusNode _focusNode2;
  TextEditingController email1 = TextEditingController();
  TextEditingController password = TextEditingController();
  bool checkValue = false;
  late SharedPreferences sharedPreferences1;
  @override
  void initState() {
    email1.addListener(() {
      setState(() {
        if (EmailValidator.validate(email1.text)) {
          setState(() {
            isvalid = true;
          });
        } else {
          setState(() {
            isvalid = false;
          });
        }
      });
    });
    setState(() {
      _focusNode1 = FocusNode();
      _focusNode2 = FocusNode();
    });
    password.addListener(() {
      setState(() {
        if (password.value.text.length <= 8) {
          setState(() {
            passwordvalid = false;
          });
        } else {
          setState(() {
            passwordvalid = true;
          });
        }
      });
    });

    getCredential();
    super.initState();
  }

  @override
  void dispose() {
    _focusNode1.dispose();
    _focusNode2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCFCFC),
      body: ListView(
        children: [
          const SizedBox(
            height: 26,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Align(
                    alignment: Alignment.topLeft,
                    child: Icon(Icons.arrow_back))),
          ),
          const SizedBox(
            height: 28,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              AppString.WELLCOME_BACK,
              style: TextStyle(
                  fontSize: 24,
                  fontFamily: Appfont.SpaceGrotesk,
                  fontWeight: FontWeight.w700,
                  letterSpacing: -0.25,
                  color: AppColors.DARK_BLUE800),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              AppString.WELLCOME_BACK_SUBTITL,
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: Appfont.SpaceGrotesk_Regular,
                  fontWeight: FontWeight.w400,
                  letterSpacing: -0.25,
                  color: AppColors.GREY700),
            ),
          ),
          const SizedBox(
            height: 28,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () async {
                  User? user =
                      await Authentication.googleSignIn(context: context)
                          as User?;
                  if (user != null) {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const Home(),
                      ),
                    );
                  } else {
                    const CircularProgressIndicator();
                  }
                },
                child: Container(
                    height: 48,
                    width: MediaQuery.of(context).size.width * 0.28,
                    decoration: BoxDecoration(
                        color: AppColors.WHITE,
                        border: Border.all(color: AppColors.GREY300),
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(child: Image.asset('assest/ic_google.png'))),
              ),
              Container(
                  height: 48,
                  width: MediaQuery.of(context).size.width * 0.28,
                  decoration: BoxDecoration(
                      color: AppColors.BLUE,
                      borderRadius: BorderRadius.circular(8)),
                  child: Center(child: Image.asset('assest/ic_facebook.png'))),
              Container(
                  height: 48,
                  width: MediaQuery.of(context).size.width * 0.28,
                  decoration: BoxDecoration(
                      color: AppColors.BLUELIGHT,
                      borderRadius: BorderRadius.circular(8)),
                  child: Center(child: Image.asset('assest/ic_twitter.png'))),
            ],
          ),
          const SizedBox(
            height: 27,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              SizedBox(
                width: 165,
                child: Divider(
                  thickness: 1,
                  color: Color(0xFFE8E8E8),
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                'or',
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: Appfont.SpaceGrotesk_Regular,
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.25,
                    color: AppColors.GREY500),
              ),
              SizedBox(
                width: 16,
              ),
              SizedBox(
                width: 165,
                child: Divider(
                  thickness: 1,
                  color: Color(0xFFE8E8E8),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 31,
          ),
          //------- Email---------//

          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              'Email',
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: Appfont.Mukta_medium,
                  fontWeight: FontWeight.w500,
                  letterSpacing: -0.15,
                  color: AppColors.GREY700),
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
                height: 43,
                decoration: BoxDecoration(
                    boxShadow: _focusNode1.hasFocus
                        ? isvalid
                            ? [
                                const BoxShadow(
                                    offset: Offset(0, 0),
                                    spreadRadius: 2,
                                    color: Color.fromRGBO(115, 237, 190, 0.3)),
                              ]
                            : [
                                const BoxShadow(
                                    offset: Offset(0, 0),
                                    spreadRadius: 2,
                                    color: Color.fromRGBO(225, 166, 165, 0.5)),
                              ]
                        : null,
                    border: Border.all(
                      width: 1,
                      color: _focusNode1.hasFocus
                          ? isvalid
                              ? AppColors.GREEN
                              : Colors.red
                          : AppColors.GREY400,
                    ),
                    borderRadius: BorderRadius.circular(5)),
                child: TextFormField(
                  focusNode: _focusNode1,
                  onTap: _requestFocus1,
                  validator: (value) {
                    if (EmailValidator.validate(value!)) {}
                    return null;
                  },
                  controller: email1,
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                      prefixIcon: const ImageIcon(
                        AssetImage('assest/ic_mail.png'),
                        color: AppColors.GREY400,
                      ),
                      hintText: 'olivia@email.com',
                      hintStyle: const TextStyle(
                          fontSize: 15,
                          fontFamily: Appfont.Mukta,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.15,
                          color: AppColors.GREY400),
                      fillColor: AppColors.WHITE,
                      filled: true,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(8))),
                )),
          ),
          const SizedBox(
            height: 16,
          ),
          //------- Email---------//

          //------- password---------//
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              'Password',
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: Appfont.Mukta_medium,
                  fontWeight: FontWeight.w500,
                  letterSpacing: -0.15,
                  color: AppColors.GREY700),
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
                height: 43,
                decoration: BoxDecoration(
                    boxShadow: _focusNode2.hasFocus
                        ? passwordvalid
                            ? [
                                const BoxShadow(
                                    offset: Offset(0, 0),
                                    spreadRadius: 2,
                                    color: Color.fromRGBO(115, 237, 190, 0.3)),
                              ]
                            : [
                                const BoxShadow(
                                    offset: Offset(0, 0),
                                    spreadRadius: 2,
                                    color: Color.fromRGBO(225, 166, 165, 0.5)),
                              ]
                        : null,
                    border: Border.all(
                      width: 1,
                      color: _focusNode2.hasFocus
                          ? passwordvalid
                              ? AppColors.GREEN
                              : Colors.red
                          : AppColors.GREY400,
                    ),
                    borderRadius: BorderRadius.circular(5)),
                child: TextFormField(
                  focusNode: _focusNode2,
                  onTap: _requestFocus2,
                  controller: password,
                  obscureText: isvisible,
                  autofillHints: const [AutofillHints.password],
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                      prefixIcon: const ImageIcon(
                        AssetImage('assest/ic_lock.png'),
                        color: AppColors.GREY400,
                      ),
                      hintText: '●●●●●●●●',
                      hintStyle: const TextStyle(
                          fontSize: 15,
                          fontFamily: Appfont.Mukta,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.15,
                          color: AppColors.GREY400),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isvisible = !isvisible;
                          });
                        },
                        icon: Icon(isvisible
                            ? Icons.visibility
                            : Icons.visibility_off),
                        color: AppColors.GREY400,
                      ),
                      fillColor: AppColors.WHITE,
                      filled: true,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(8))),
                )),
          ),
          //------- password---------//
          const SizedBox(
            height: 6,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              'Must be at least 8 characters',
              style: TextStyle(
                  fontSize: 14,
                  fontFamily: Appfont.Mukta_medium,
                  fontWeight: FontWeight.w500,
                  letterSpacing: -0.15,
                  color: _focusNode2.hasFocus
                      ? passwordvalid
                          ? AppColors.GREY500
                          : Colors.red
                      : AppColors.GREY500),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4)),
                    activeColor: AppColors.GREEN,
                    value: checkValue,
                    onChanged: (value) {
                      setState(() {
                        checkValue = value!;
                      });
                      setState(() async {
                        sharedPreferences1 =
                            await SharedPreferences.getInstance();
                        sharedPreferences1.setBool('check', value!);
                        sharedPreferences1.setString('email', email1.text);
                        sharedPreferences1.setString('password', password.text);
                      });
                    },
                  ),
                  const Text(
                    'Remember me',
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: Appfont.Mukta_medium,
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.15,
                        color: AppColors.GREY700),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ForgotPassword(),
                        ));
                  },
                  child: const Text(
                    'Forgot password?',
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: Appfont.Mukta,
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.15,
                        color: AppColors.DARK_BLUE500),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),

          //------- sign in button---------//

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              height: 52,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 2),
                        blurRadius: 2,
                        color: const Color(0xFFF3F4F6).withOpacity(0.05))
                  ],
                  color: const Color(0xFFF3F4F6),
                  borderRadius: BorderRadius.circular(8)),
              child: ElevatedButton(
                style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0),
                    backgroundColor: MaterialStateProperty.all(
                        isvalid && passwordvalid
                            ? AppColors.GREEN
                            : AppColors.GREY100)),
                onPressed: isvalid && passwordvalid
                    ? () {
                        AuthenticationHelper().signIn(
                            email: email1.text,
                            password: password.text,
                            context: context);
                      }
                    : null,
                child: Text(
                  AppString.LOGIN,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: Appfont.SpaceGrotesk_medium,
                      fontSize: 15,
                      letterSpacing: -0.25,
                      color: isvalid && passwordvalid
                          ? AppColors.DARK_BLUE800
                          : AppColors.GREY400),
                ),
              ),
            ),
          ),

          //------- sign in button---------//
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Don’t have an account?",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: Appfont.Mukta_medium,
                    fontSize: 15,
                    letterSpacing: -0.15,
                    color: AppColors.GREY500),
              ),
              const SizedBox(
                width: 4,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUpSCreen(),
                      ));
                },
                child: const Text(
                  "Sign up",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontFamily: Appfont.Mukta,
                      fontSize: 15,
                      letterSpacing: -0.15,
                      color: AppColors.DARK_BLUE500),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  getCredential() async {
    sharedPreferences1 = await SharedPreferences.getInstance();
    setState(() {
      checkValue = sharedPreferences1.getBool('check')!;

      if (checkValue == true) {
        email1.text = sharedPreferences1.getString('email')!;
        password.text = sharedPreferences1.getString('password')!;
      } else {
        email1.clear();
        password.clear();
        sharedPreferences1.clear();
      }
    });
  }

  void _requestFocus1() {
    setState(() {
      FocusScope.of(context).requestFocus(_focusNode1);
    });
  }

  void _requestFocus2() {
    setState(() {
      FocusScope.of(context).requestFocus(_focusNode2);
    });
  }
}
