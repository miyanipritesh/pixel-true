import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../Firebase Helper/google_signin_helper.dart';
import '../../constant.dart';
import '../SignupScreen.dart';
import '../homeScreen.dart';
import '../loginScreen.dart';

class Launch_Screen3 extends StatefulWidget {
  const Launch_Screen3({Key? key}) : super(key: key);

  @override
  State<Launch_Screen3> createState() => _Launch_Screen3State();
}

class _Launch_Screen3State extends State<Launch_Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assest/ic_bg.png'), fit: BoxFit.fitHeight)),
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          children: [
            const SizedBox(
              height: 64,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                AppString.LAUNCH_SCREEN3,
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontFamily: Appfont.SpaceGrotesk,
                    fontSize: 24,
                    color: AppColors.WHITE),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                AppString.LAUNCH_SCREEN_main,
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: Appfont.SpaceGrotesk_Regular,
                    fontSize: 15,
                    color: AppColors.GREY),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 4.3,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: InkWell(
                onTap: () async {
                  User? user =
                      (await Authentication.googleSignIn(context: context))
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
                  height: 52,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            offset: const Offset(0, 2),
                            blurRadius: 2,
                            color: const Color(0xFF101828).withOpacity(0.05))
                      ],
                      color: AppColors.WHITE,
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assest/ic_google.png'),
                      const SizedBox(
                        width: 8,
                      ),
                      const Text(
                        AppString.GOOGLE_SIGNUP,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: Appfont.SpaceGrotesk_medium,
                            fontSize: 15,
                            color: AppColors.GREY700),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                height: 52,
                decoration: BoxDecoration(
                    color: AppColors.BLUE,
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assest/ic_facebook.png'),
                    const SizedBox(
                      width: 8,
                    ),
                    const Text(
                      AppString.FACEBOOK_SIGNUP,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: Appfont.SpaceGrotesk_medium,
                          fontSize: 15,
                          color: AppColors.WHITE),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                height: 52,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(0, 2),
                          blurRadius: 2,
                          color: const Color(0xFF101828).withOpacity(0.05))
                    ],
                    color: AppColors.BLUELIGHT,
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assest/ic_twitter.png'),
                    const SizedBox(
                      width: 8,
                    ),
                    const Text(
                      AppString.TWITTER_SIGNUP,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: Appfont.SpaceGrotesk_medium,
                          fontSize: 15,
                          color: AppColors.WHITE),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUpSCreen(),
                      ));
                },
                child: Container(
                  height: 52,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            offset: const Offset(0, 2),
                            blurRadius: 2,
                            color: const Color(0xFF101828).withOpacity(0.05))
                      ],
                      color: AppColors.WHITE,
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assest/ic_mail.png'),
                      const SizedBox(
                        width: 8,
                      ),
                      const Text(
                        AppString.EMAIL_SIGNUP,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: Appfont.SpaceGrotesk_medium,
                            fontSize: 15,
                            color: AppColors.GREY700),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 46,
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
                      color: AppColors.WHITE),
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
                        fontWeight: FontWeight.w500,
                        fontFamily: Appfont.Mukta,
                        fontSize: 15,
                        letterSpacing: -0.15,
                        color: AppColors.GREEN),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
