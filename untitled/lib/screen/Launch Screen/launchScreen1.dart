import 'package:flutter/material.dart';

import '../../constant.dart';
import 'launchScreen2.dart';

class LaunchScreen1 extends StatefulWidget {
  const LaunchScreen1({Key? key}) : super(key: key);

  @override
  State<LaunchScreen1> createState() => _LaunchScreen1State();
}

class _LaunchScreen1State extends State<LaunchScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assest/ic_bg.png'), fit: BoxFit.fill)),
        child: ListView(
          children: [
            const SizedBox(
              height: 64,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                AppString.LAUNCH_SCREEN1,
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontFamily: Appfont.SpaceGrotesk,
                    fontSize: 32,
                    color: AppColors.WHITE),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Image.asset('assest/ic_ps_icon1.png'),
                const SizedBox(
                  width: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Sell unused internet',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: Appfont.SpaceGrotesk,
                          fontSize: 16,
                          color: AppColors.GREEN),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'Start earning money on autopilot in 60\nseconds',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontFamily: Appfont.Mukta,
                          fontSize: 15,
                          color: AppColors.WHITE),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 36,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Image.asset('assest/ic_ps_icon2.png'),
                const SizedBox(
                  width: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Refer friends',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: Appfont.SpaceGrotesk,
                          fontSize: 16,
                          color: AppColors.GREEN),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'Get 5 for each user you signup and a\n10% recording commission on their\nearnings',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontFamily: Appfont.Mukta,
                          fontSize: 15,
                          color: AppColors.WHITE),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 42,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Image.asset('assest/ic_ps_icon3.png'),
                const SizedBox(
                  width: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Connect more devices',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: Appfont.SpaceGrotesk,
                          fontSize: 16,
                          color: AppColors.GREEN),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'them to earn even more.',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontFamily: Appfont.Mukta,
                          fontSize: 15,
                          color: AppColors.WHITE),
                    ),
                  ],
                )
              ],
            ),
            /* const SizedBox(
              height: 183,
            ),*/
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 32),
        child: Container(
          height: 52,
          width: 374,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
          child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(AppColors.GREEN)),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LaunchScreen2(),
                  ));
            },
            child: const Text(
              'Continue',
              style: TextStyle(
                  color: Color(0xFF573353),
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  fontFamily: Appfont.SpaceGrotesk_medium),
            ),
          ),
        ),
      ),
    );
  }
}
