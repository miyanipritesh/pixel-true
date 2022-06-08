import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../screen/homeScreen.dart';
import 'feedbackThankScreen.dart';

class FeedBackScreen extends StatefulWidget {
  const FeedBackScreen({Key? key}) : super(key: key);

  @override
  State<FeedBackScreen> createState() => _FeedBackScreenState();
}

class _FeedBackScreenState extends State<FeedBackScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCFCFC),
      body: SafeArea(
        child: ListView(
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset('assest/ic_back.png')),
                const SizedBox(
                  width: 125,
                ),
                const Text(
                  'Feedback',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: Appfont.SpaceGrotesk_medium,
                      fontWeight: FontWeight.w500,
                      color: AppColors.GREY700,
                      letterSpacing: -0.25),
                ),
              ],
            ),
            const SizedBox(
              height: 13,
            ),
            const Divider(
              color: Color(0xFFE8E8E8),
              thickness: 2,
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                AppString.FEEDBACK_SHARE,
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: Appfont.SpaceGrotesk_medium,
                    fontWeight: FontWeight.w500,
                    color: AppColors.GREY800,
                    letterSpacing: -0.25),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                AppString.FEEDBACK,
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 15.5,
                    fontFamily: Appfont.Mukta,
                    fontWeight: FontWeight.w400,
                    color: AppColors.GREY700,
                    letterSpacing: -0.25),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                  height: 128,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: AppColors.GREY300),
                      borderRadius: BorderRadius.circular(5)),
                  child: TextField(
                    textAlignVertical: TextAlignVertical.bottom,
                    decoration: InputDecoration(
                        hintStyle: const TextStyle(
                            fontSize: 15,
                            fontFamily: Appfont.Mukta,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.15,
                            color: AppColors.GREY400),
                        fillColor: AppColors.GREY300.withOpacity(0.01),
                        filled: true,
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(8))),
                  )),
            ),
            const SizedBox(
              height: 280,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FeedBackScreen2(),
                      ));
                },
                child: Container(
                  height: 52,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            offset: const Offset(0, 2),
                            blurRadius: 2,
                            color: const Color(0xFFF3F4F6).withOpacity(0.05))
                      ],
                      color: AppColors.GREEN,
                      borderRadius: BorderRadius.circular(8)),
                  child: const Center(
                    child: Text(
                      AppString.SUBMIT,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: Appfont.SpaceGrotesk_medium,
                          fontSize: 15,
                          letterSpacing: -0.25,
                          color: AppColors.DARK_BLUE800),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 91,
        decoration: BoxDecoration(border: Border.all(color: AppColors.GREY300)),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          elevation: 2,
          currentIndex: index1,
          onTap: (index) {
            setState(() {
              index1 = index;
            });
          },
          backgroundColor: Colors.white,
          unselectedItemColor: AppColors.GREY400,
          selectedItemColor: AppColors.DARK_BLUE800,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          items: const [
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assest/ic_icon1.png'),
                  size: 20,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assest/ic_icon2.png')),
                label: 'Referral'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assest/ic_icon3.png')),
                label: 'Devices'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assest/ic_icon4.png')),
                label: 'More'),
          ],
        ),
      ),
    );
  }
}
