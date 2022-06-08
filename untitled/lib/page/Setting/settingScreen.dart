import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:getwidget/components/toggle/gf_toggle.dart';
import 'package:getwidget/types/gf_toggle_type.dart';

import '../../Firebase Helper/google_signin_helper.dart';
import '../../constant.dart';
import '../../screen/loginScreen.dart';
import 'Feedback/feedbackScreen.dart';
import 'Reset Password/resetPasswordScreen.dart';
import 'Transition History/transtionScreen.dart';

class SettingScreeen extends StatefulWidget {
  const SettingScreeen({Key? key}) : super(key: key);

  @override
  State<SettingScreeen> createState() => _SettingScreeenState();
}

class _SettingScreeenState extends State<SettingScreeen> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCFCFC),
      body: SafeArea(
        child: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),

            //---------------Transation Container----------------//

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                height: 132,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: const Color(0xFFE8E8E8),
                    )),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 20, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Your ID',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontFamily: Appfont.Mukta_medium,
                                    fontSize: 14,
                                    color: AppColors.GREY400,
                                    letterSpacing: -0.15),
                              ),
                              Text(
                                '#US43210',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontFamily: Appfont.SpaceGrotesk,
                                    fontSize: 20,
                                    color: AppColors.DARK_BLUE800,
                                    letterSpacing: 1),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Image.asset('assest/ic_watch.png'),
                                  const SizedBox(
                                    width: 9,
                                  ),
                                  const Text(
                                    'Joined September 2021',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontFamily: Appfont.Mukta,
                                        fontSize: 13,
                                        color: AppColors.GREY700,
                                        letterSpacing: -0.15),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Image.asset('assest/ic_ring.png'),
                                  const SizedBox(
                                    width: 9,
                                  ),
                                  const Text(
                                    'Total 30GB shared',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontFamily: Appfont.Mukta,
                                        fontSize: 13,
                                        color: AppColors.GREY700,
                                        letterSpacing: -0.15),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Image.asset('assest/ic_doller.png'),
                          const SizedBox(
                            width: 5,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const TranstionList(),
                                  ));
                            },
                            child: const Text(
                              'View transaction history',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontFamily: Appfont.Mukta_medium,
                                  fontSize: 15.5,
                                  color: AppColors.DARK_BLUE500,
                                  letterSpacing: -0.15),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),

            //---------------Transation Container----------------//

            const SizedBox(height: 20),

            //---------------Setting Container----------------//
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                'Settings',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: Appfont.SpaceGrotesk_medium,
                    fontSize: 15,
                    color: AppColors.GREY600,
                    letterSpacing: -0.25),
              ),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                constraints: const BoxConstraints(maxHeight: double.infinity),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: const Color(0xFFEFEFEF))),
                child: Column(
                  children: [
                    ListTile(
                      contentPadding: const EdgeInsets.only(
                        right: 5,
                        left: 16,
                      ),
                      leading: Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Image.asset('assest/ic_finger.png'),
                      ),
                      title: const Text(
                        'Login with Face ID/Touch ID',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: Appfont.SpaceGrotesk_medium,
                            fontSize: 15,
                            color: AppColors.GREY700,
                            letterSpacing: -0.25),
                      ),
                      trailing: SizedBox(
                        height: 35,
                        width: 55,
                        child: GFToggle(
                          onChanged: (val) {},
                          value: true,
                          enabledTrackColor: AppColors.GREEN,
                          disabledTrackColor: AppColors.GREY100,
                          type: GFToggleType.ios,
                        ),
                      ),
                      horizontalTitleGap: 0,
                    ),
                    const Divider(
                      color: Color(0xFFEFEFEF),
                      thickness: 2,
                    ),
                    ListTile(
                      contentPadding: const EdgeInsets.only(right: 5, left: 16),
                      leading: Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Image.asset('assest/ic_data.png'),
                      ),
                      title: const Text(
                        'Enable mobile data',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: Appfont.SpaceGrotesk_medium,
                            fontSize: 15,
                            color: AppColors.GREY700,
                            letterSpacing: -0.25),
                      ),
                      trailing: SizedBox(
                        height: 35,
                        width: 55,
                        child: GFToggle(
                          onChanged: (val) {},
                          value: true,
                          enabledTrackColor: AppColors.GREEN,
                          disabledTrackColor: AppColors.GREY100,
                          type: GFToggleType.ios,
                        ),
                      ),
                      horizontalTitleGap: 0,
                    ),
                    const Divider(
                      color: Color(0xFFEFEFEF),
                      thickness: 2,
                    ),
                    ListTile(
                      contentPadding: const EdgeInsets.only(right: 5, left: 16),
                      leading: Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Image.asset('assest/ic_battry.png'),
                      ),
                      title: const Text(
                        'Battery optimization',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: Appfont.SpaceGrotesk_medium,
                            fontSize: 15,
                            color: AppColors.GREY700,
                            letterSpacing: -0.25),
                      ),
                      trailing: SizedBox(
                        height: 35,
                        width: 55,
                        child: GFToggle(
                          onChanged: (val) {},
                          value: true,
                          enabledTrackColor: AppColors.GREEN,
                          disabledTrackColor: AppColors.GREY100,
                          type: GFToggleType.ios,
                        ),
                      ),
                      horizontalTitleGap: 0,
                    ),
                    const Divider(
                      color: Color(0xFFEFEFEF),
                      thickness: 2,
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ResetPassword(),
                            ));
                      },
                      contentPadding:
                          const EdgeInsets.only(right: 20, left: 16),
                      leading: Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Image.asset('assest/ic_lock2.png'),
                      ),
                      title: const Text(
                        'Reset password',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: Appfont.SpaceGrotesk_medium,
                            fontSize: 15,
                            color: AppColors.GREY700,
                            letterSpacing: -0.25),
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                      ),
                      horizontalTitleGap: 0,
                    ),
                  ],
                ),
              ),
            ),
            //---------------Setting Container----------------//

            const SizedBox(height: 20),

            //---------------Help Container----------------//
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                'Help',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: Appfont.SpaceGrotesk_medium,
                    fontSize: 15,
                    color: AppColors.GREY600,
                    letterSpacing: -0.25),
              ),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                constraints: const BoxConstraints(maxHeight: double.infinity),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: const Color(0xFFEFEFEF))),
                child: Column(
                  children: [
                    ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const FeedBackScreen(),
                            ));
                      },
                      contentPadding: const EdgeInsets.only(
                        right: 20,
                        left: 16,
                      ),
                      leading: Padding(
                        padding: const EdgeInsets.only(
                          top: 5,
                        ),
                        child: Image.asset('assest/ic_hart.png'),
                      ),
                      title: const Text(
                        'Send us your feedback',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: Appfont.SpaceGrotesk_medium,
                            fontSize: 15,
                            color: AppColors.GREY700,
                            letterSpacing: -0.25),
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                      ),
                      horizontalTitleGap: 0,
                    ),
                    const Divider(
                      color: Color(0xFFEFEFEF),
                      thickness: 2,
                    ),
                    ListTile(
                      contentPadding:
                          const EdgeInsets.only(right: 20, left: 16),
                      leading: Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Image.asset('assest/ic_qua.png'),
                      ),
                      title: const Text(
                        'Help center',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: Appfont.SpaceGrotesk_medium,
                            fontSize: 15,
                            color: AppColors.GREY700,
                            letterSpacing: -0.25),
                      ),
                      trailing: SizedBox(
                          height: 18,
                          width: 18,
                          child: Image.asset(
                            'assest/ic_share2.png',
                            fit: BoxFit.fill,
                          )),
                      horizontalTitleGap: 0,
                    ),
                    const Divider(
                      color: Color(0xFFEFEFEF),
                      thickness: 2,
                    ),
                    ListTile(
                      contentPadding:
                          const EdgeInsets.only(right: 20, left: 16),
                      leading: Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Image.asset('assest/ic_twitter2.png'),
                      ),
                      title: const Text(
                        'Twitter',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: Appfont.SpaceGrotesk_medium,
                            fontSize: 15,
                            color: AppColors.GREY700,
                            letterSpacing: -0.25),
                      ),
                      trailing: SizedBox(
                          height: 18,
                          width: 18,
                          child: Image.asset(
                            'assest/ic_share2.png',
                            fit: BoxFit.fill,
                          )),
                      horizontalTitleGap: 0,
                    ),
                    const Divider(
                      color: Color(0xFFEFEFEF),
                      thickness: 2,
                    ),
                    ListTile(
                      contentPadding:
                          const EdgeInsets.only(right: 20, left: 16),
                      leading: Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Image.asset('assest/ic_discod2.png'),
                      ),
                      title: const Text(
                        'Discord',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: Appfont.SpaceGrotesk_medium,
                            fontSize: 15,
                            color: AppColors.GREY700,
                            letterSpacing: -0.25),
                      ),
                      trailing: SizedBox(
                          height: 18,
                          width: 18,
                          child: Image.asset(
                            'assest/ic_share2.png',
                            fit: BoxFit.fill,
                          )),
                      horizontalTitleGap: 0,
                    ),
                  ],
                ),
              ),
            ),
            //---------------Help Container----------------//

            const SizedBox(height: 20),

            //---------------Legal Container----------------//
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                'Legal',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: Appfont.SpaceGrotesk_medium,
                    fontSize: 15,
                    color: AppColors.GREY600,
                    letterSpacing: -0.25),
              ),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                constraints: const BoxConstraints(maxHeight: double.infinity),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: const Color(0xFFEFEFEF))),
                child: Column(
                  children: [
                    ListTile(
                      contentPadding: const EdgeInsets.only(
                        right: 20,
                        left: 16,
                      ),
                      leading: Padding(
                        padding: const EdgeInsets.only(
                          top: 5,
                        ),
                        child: Image.asset('assest/ic_privicy.png'),
                      ),
                      title: const Text(
                        'Privacy policy',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: Appfont.SpaceGrotesk_medium,
                            fontSize: 15,
                            color: AppColors.GREY700,
                            letterSpacing: -0.25),
                      ),
                      trailing: SizedBox(
                          height: 18,
                          width: 18,
                          child: Image.asset(
                            'assest/ic_share2.png',
                            fit: BoxFit.fill,
                          )),
                      horizontalTitleGap: 0,
                    ),
                    const Divider(
                      color: Color(0xFFEFEFEF),
                      thickness: 2,
                    ),
                    ListTile(
                      contentPadding:
                          const EdgeInsets.only(right: 20, left: 16),
                      leading: Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Image.asset('assest/ic_privicy.png'),
                      ),
                      title: const Text(
                        'Terms of use',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: Appfont.SpaceGrotesk_medium,
                            fontSize: 15,
                            color: AppColors.GREY700,
                            letterSpacing: -0.25),
                      ),
                      trailing: SizedBox(
                          height: 18,
                          width: 18,
                          child: Image.asset(
                            'assest/ic_share2.png',
                            fit: BoxFit.fill,
                          )),
                      horizontalTitleGap: 0,
                    ),
                  ],
                ),
              ),
            ),

            //---------------Legal Container----------------//
            const SizedBox(height: 20),

            //--------------Sign Out Button-----------------//

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Container(
                constraints: const BoxConstraints(maxHeight: double.infinity),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: const Color(0xFFEFEFEF))),
                child: ListTile(
                  onTap: () {
                    Authentication.signOut(context: context);
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ));
                    Fluttertoast.showToast(msg: 'Sign our succesfully');
                  },
                  contentPadding: const EdgeInsets.only(
                    right: 20,
                    left: 16,
                  ),
                  leading: Padding(
                    padding: const EdgeInsets.only(
                      top: 5,
                    ),
                    child: Image.asset('assest/ic_signOut.png'),
                  ),
                  title: const Text(
                    'Log out',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: Appfont.SpaceGrotesk_medium,
                        fontSize: 15,
                        color: Colors.red,
                        letterSpacing: -0.25),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                  ),
                  horizontalTitleGap: 0,
                ),
              ),
            ),

            //--------------Sign Out Button-----------------//
          ],
        ),
      ),
    );
  }
}
