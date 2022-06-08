import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../screen/homeScreen.dart';

class FeedBackScreen2 extends StatefulWidget {
  const FeedBackScreen2({Key? key}) : super(key: key);

  @override
  State<FeedBackScreen2> createState() => _FeedBackScreen2State();
}

class _FeedBackScreen2State extends State<FeedBackScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCFCFC),
      body: SafeArea(
        child: Column(
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
                  AppString.FEEDBACK_TEXT,
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
              height: 36,
            ),
            Image.asset('assest/ic_feedback.png'),
            const SizedBox(
              height: 32,
            ),
            const Text(
              AppString.FEEDBACK_THANKS,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: Appfont.SpaceGrotesk_medium,
                  fontWeight: FontWeight.w500,
                  color: AppColors.GREY800,
                  letterSpacing: -0.25),
            ),
            const SizedBox(
              height: 320,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Home(),
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
                      AppString.KEEP_EARNING,
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
