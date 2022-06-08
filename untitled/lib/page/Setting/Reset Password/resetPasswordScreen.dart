import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../constant.dart';
import '../../../screen/loginScreen.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final valid = GlobalKey();
  TextEditingController resetpass = TextEditingController();
  TextEditingController resetpass1 = TextEditingController();
  bool isvalid = true;
  bool isvalid1 = false;
  bool isvisible = false;
  var actionCode = ('oobCode');
  late FocusNode _focusNode;
  late FocusNode _focusNode1;
  @override
  void initState() {
    setState(() {
      _focusNode = FocusNode();
      _focusNode1 = FocusNode();
    });
    resetpass.addListener(() {
      setState(() {
        if (resetpass.value.text.length <= 8) {
          setState(() {
            isvalid = false;
          });
        } else {
          setState(() {
            isvalid = true;
          });
        }
      });
    });
    resetpass1.addListener(() {
      setState(() {
        if (resetpass1.value.text == resetpass.value.text) {
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
    super.initState();
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
            padding: const EdgeInsets.only(right: 345),
            child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(Icons.arrow_back)),
          ),
          const SizedBox(
            height: 28,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              'Reset password',
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
              AppString.RERGET_PAWWORD_SUBTITLE,
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
          //------- Email---------//

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
                    boxShadow: _focusNode.hasFocus
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
                      color: _focusNode.hasFocus
                          ? isvalid
                              ? AppColors.GREEN
                              : Colors.red
                          : AppColors.GREY400,
                    ),
                    borderRadius: BorderRadius.circular(5)),
                child: TextFormField(
                  focusNode: _focusNode,
                  onTap: _requstfocus,
                  controller: resetpass,
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
                  color: _focusNode.hasFocus
                      ? isvalid
                          ? AppColors.GREY500
                          : Colors.red
                      : AppColors.GREY500),
            ),
          ),

          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              'Confirm password',
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
                        ? isvalid1
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
                          ? isvalid1
                              ? AppColors.GREEN
                              : Colors.red
                          : AppColors.GREY400,
                    ),
                    borderRadius: BorderRadius.circular(5)),
                child: TextFormField(
                  focusNode: _focusNode1,
                  onTap: _requstfocus1,
                  controller: resetpass1,
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
              'Both passwords must match',
              style: TextStyle(
                  fontSize: 14,
                  fontFamily: Appfont.Mukta_medium,
                  fontWeight: FontWeight.w500,
                  letterSpacing: -0.15,
                  color: _focusNode1.hasFocus
                      ? isvalid1
                          ? AppColors.GREY500
                          : Colors.red
                      : AppColors.GREY500),
            ),
          ),

          //------- Email---------//

          //------- sign in button---------//

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      offset: const Offset(0, 2),
                      blurRadius: 2,
                      color: const Color(0xFFF3F4F6).withOpacity(0.05))
                ], borderRadius: BorderRadius.circular(8)),
                height: 52,
                child: ElevatedButton(
                  style: ButtonStyle(
                      elevation: MaterialStateProperty.all(0),
                      backgroundColor: MaterialStateProperty.all(
                          isvalid && isvalid1
                              ? AppColors.GREEN
                              : AppColors.GREY100)),
                  onPressed: isvalid && isvalid1
                      ? () async {
                          var user = FirebaseAuth.instance.currentUser;
                          await user
                              ?.updatePassword(resetpass1.text)
                              .then((value) => {
                                    Fluttertoast.showToast(
                                        msg: 'Reset Password Succesfully'),
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const LoginScreen(),
                                        ))
                                  })
                              .catchError((e) {
                            Fluttertoast.showToast(msg: e!.message);
                          });
                        }
                      : null,
                  child: Text(
                    AppString.SUBMIT,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: Appfont.SpaceGrotesk_medium,
                        fontSize: 15,
                        letterSpacing: -0.25,
                        color: isvalid
                            ? AppColors.DARK_BLUE800
                            : AppColors.GREY400),
                  ),
                )),
          )

          //------- sign in button---------//
        ],
      ),
    );
  }

  _requstfocus() {
    setState(() {
      FocusScope.of(context).requestFocus(_focusNode);
    });
  }

  _requstfocus1() {
    setState(() {
      FocusScope.of(context).requestFocus(_focusNode1);
    });
  }
}
