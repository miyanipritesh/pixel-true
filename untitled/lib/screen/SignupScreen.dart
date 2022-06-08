import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../Firebase Helper/authntication_Helper.dart';
import '../Firebase Helper/google_signin_helper.dart';
import '../constant.dart';
import 'homeScreen.dart';
import 'loginScreen.dart';

TextEditingController name = TextEditingController();

class SignUpSCreen extends StatefulWidget {
  const SignUpSCreen({Key? key}) : super(key: key);

  @override
  State<SignUpSCreen> createState() => _SignUpSCreenState();
}

class _SignUpSCreenState extends State<SignUpSCreen> {
  late FocusNode _focusNode;
  late FocusNode _focusNode1;
  late FocusNode _focusNode2;
  bool isvisible = true;
  bool isname = false;
  bool isvalid1 = false;
  bool passwordvalid = false;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  String? password1;
  GlobalKey<State<StatefulWidget>> isvalid = GlobalKey();
  @override
  void initState() {
    super.initState();
    setState(() {
      _focusNode1 = FocusNode();
      _focusNode = FocusNode();
      _focusNode2 = FocusNode();
    });
    name.addListener(() {
      setState(() {
        if (name.text.isNotEmpty && _focusNode.hasFocus) {
          setState(() {
            isname = true;
          });
        }
      });
    });
    email.addListener(() {
      setState(() {
        if (EmailValidator.validate(email.text)) {
          setState(() {
            isvalid1 = true;
          });
        } else {
          setState(() {
            isvalid1 = false;
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
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _focusNode1.dispose();
    _focusNode2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCFCFC),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 19.0),
                    child: Icon(Icons.arrow_back),
                  )),
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height / 1.15,
                  child: ListView(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          AppString.CREATE_ACCOUNT,
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
                          AppString.CREATE_ACCOUNT_SUBTITLE,
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: Appfont.SpaceGrotesk_Regular,
                              fontWeight: FontWeight.w400,
                              letterSpacing: -0.25,
                              color: AppColors.GREY700),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),

                      //------- Your name---------//

                      const Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          'Your name',
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
                                border: Border.all(
                                    width: 1,
                                    color: _focusNode.hasFocus
                                        ? AppColors.GREEN
                                        : AppColors.GREY300),
                                borderRadius: BorderRadius.circular(5),
                                color: AppColors.WHITE,
                                boxShadow: _focusNode.hasFocus
                                    ? [
                                        const BoxShadow(
                                            offset: Offset(0, 0),
                                            spreadRadius: 4,
                                            color: Color.fromRGBO(
                                                115, 237, 190, 0.3)),
                                      ]
                                    : null),
                            child: TextField(
                              controller: name,
                              onTap: _requestFocus,
                              textInputAction: TextInputAction.next,
                              focusNode: _focusNode,
                              textAlignVertical: TextAlignVertical.bottom,
                              decoration: InputDecoration(
                                  prefixIcon: const ImageIcon(
                                    AssetImage('assest/ic_person.png'),
                                    color: AppColors.GREY500,
                                  ),
                                  hintText: 'Olivia Turkney',
                                  hintStyle: const TextStyle(
                                      fontSize: 15,
                                      fontFamily: Appfont.Mukta,
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: -0.15,
                                      color: AppColors.GREY400),
                                  filled: true,
                                  fillColor: AppColors.WHITE,
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(8))),
                            )),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      //------- Your name---------//

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
                                color: AppColors.WHITE,
                                boxShadow: _focusNode1.hasFocus
                                    ? isvalid1
                                        ? [
                                            const BoxShadow(
                                                offset: Offset(0, 0),
                                                spreadRadius: 2,
                                                color: Color.fromRGBO(
                                                    115, 237, 190, 0.3)),
                                          ]
                                        : [
                                            const BoxShadow(
                                                offset: Offset(0, 0),
                                                spreadRadius: 2,
                                                color: Color.fromRGBO(
                                                    225, 166, 165, 0.5)),
                                          ]
                                    : null,
                                border: Border.all(
                                  width: 1,
                                  color: _focusNode1.hasFocus
                                      ? isvalid1
                                          ? AppColors.GREEN
                                          : Colors.red
                                      : AppColors.GREY400,
                                ),
                                borderRadius: BorderRadius.circular(5)),
                            child: TextFormField(
                              onSaved: (value) {
                                setState(() {
                                  email.text = value!;
                                });
                              },
                              textInputAction: TextInputAction.next,
                              controller: email,
                              focusNode: _focusNode1,
                              onTap: _requestFocus1,
                              textAlignVertical: TextAlignVertical.bottom,
                              decoration: InputDecoration(
                                  prefixIcon: const ImageIcon(
                                    AssetImage('assest/ic_mail.png'),
                                    color: AppColors.GREY500,
                                  ),
                                  hintText: 'olivia@email.com',
                                  hintStyle: const TextStyle(
                                      fontSize: 15,
                                      fontFamily: Appfont.Mukta,
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: -0.15,
                                      color: AppColors.GREY400),
                                  filled: true,
                                  fillColor: AppColors.WHITE,
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(8))),
                            )),
                      ),

                      const SizedBox(
                        height: 8,
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
                                color: AppColors.WHITE,
                                boxShadow: _focusNode2.hasFocus
                                    ? passwordvalid
                                        ? [
                                            const BoxShadow(
                                                offset: Offset(0, 0),
                                                spreadRadius: 2,
                                                color: Color.fromRGBO(
                                                    115, 237, 190, 0.3)),
                                          ]
                                        : [
                                            const BoxShadow(
                                                offset: Offset(0, 0),
                                                spreadRadius: 2,
                                                color: Color.fromRGBO(
                                                    225, 166, 165, 0.5)),
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
                              obscureText: isvisible,
                              textInputAction: TextInputAction.done,
                              focusNode: _focusNode2,
                              onTap: _requestFocus2,
                              controller: password,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              onSaved: (value) {
                                setState(() {
                                  password1 = value!;
                                });
                              },
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
                                      color: AppColors.GREY500),
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
                              color: passwordvalid
                                  ? AppColors.GREY800
                                  : Colors.red),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),

                      //------- sign Up button---------//

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Container(
                          height: 52,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    offset: const Offset(0, 2),
                                    blurRadius: 2,
                                    color: const Color(0xFFF3F4F6)
                                        .withOpacity(0.05))
                              ],
                              color: const Color(0xFFF3F4F6),
                              borderRadius: BorderRadius.circular(8)),
                          child: ElevatedButton(
                            style: ButtonStyle(
                                elevation: MaterialStateProperty.all(0),
                                backgroundColor: MaterialStateProperty.all(
                                    passwordvalid && isvalid1 && isname
                                        ? AppColors.GREEN
                                        : const Color(0xFFF3F4F6))),
                            onPressed: passwordvalid && isvalid1 && isname
                                ? () {
                                    AuthenticationHelper().signUp(
                                        email: email.text,
                                        password: password.text,
                                        context: context);
                                  }
                                : null,
                            child: Text(
                              "Sign up",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontFamily: Appfont.SpaceGrotesk_medium,
                                  fontSize: 15,
                                  letterSpacing: -0.25,
                                  color: passwordvalid && isvalid1
                                      ? AppColors.GREY800
                                      : AppColors.GREY400),
                            ),
                          ),
                        ),
                      ),

                      //------- sign Up button---------//
                      const SizedBox(
                        height: 16,
                      ),
                      Center(
                        child: SizedBox(
                            height: MediaQuery.of(context).size.height * 0.05,
                            width: 345,
                            child: Column(
                              children: [
                                const Text(
                                  'By continuing, I confirm that I am 18+ and agree to',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: Appfont.Mukta,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: -0.15,
                                      color: AppColors.GREY500),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      'Repocket’s',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: Appfont.Mukta,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: -0.15,
                                          color: AppColors.GREY500),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Terms of Use',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: Appfont.Mukta,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: -0.15,
                                          decoration: TextDecoration.underline,
                                          color: AppColors.GREY500),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'and',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: Appfont.Mukta,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: -0.15,
                                          color: AppColors.GREY500),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Privacy Policy',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: Appfont.Mukta,
                                          fontWeight: FontWeight.w500,
                                          decoration: TextDecoration.underline,
                                          letterSpacing: -0.15,
                                          color: AppColors.GREY500),
                                    ),
                                  ],
                                )
                              ],
                            )),
                      ),

                      const SizedBox(
                        height: 31,
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
                        height: 27,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () async {
                              User? user = (await Authentication.googleSignIn(
                                  context: context)) as User?;
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
                                    border:
                                        Border.all(color: AppColors.GREY300),
                                    borderRadius: BorderRadius.circular(8)),
                                child: Center(
                                    child:
                                        Image.asset('assest/ic_google.png'))),
                          ),
                          Container(
                              height: 48,
                              width: MediaQuery.of(context).size.width * 0.28,
                              decoration: BoxDecoration(
                                  color: AppColors.BLUE,
                                  borderRadius: BorderRadius.circular(8)),
                              child: Center(
                                  child:
                                      Image.asset('assest/ic_facebook.png'))),
                          Container(
                              height: 48,
                              width: MediaQuery.of(context).size.width * 0.28,
                              decoration: BoxDecoration(
                                  color: AppColors.BLUELIGHT,
                                  borderRadius: BorderRadius.circular(8)),
                              child: Center(
                                  child: Image.asset('assest/ic_twitter.png'))),
                        ],
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Already have an account?",
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
                                    builder: (context) => const LoginScreen(),
                                  ));
                            },
                            child: const Text(
                              "Log in",
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
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _requestFocus() {
    setState(() {
      FocusScope.of(context).requestFocus(_focusNode);
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
