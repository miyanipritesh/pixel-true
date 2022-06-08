import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../screen/homeScreen.dart';

class WithDrawRequest extends StatefulWidget {
  const WithDrawRequest({Key? key}) : super(key: key);

  @override
  State<WithDrawRequest> createState() => _WithDrawRequestState();
}

class _WithDrawRequestState extends State<WithDrawRequest> {
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
            const Center(
              child: Text(
                'Withdraw',
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: Appfont.SpaceGrotesk_medium,
                    fontWeight: FontWeight.w500,
                    color: AppColors.GREY700,
                    letterSpacing: -0.25),
              ),
            ),
            const SizedBox(
              height: 13,
            ),
            const Divider(
              color: Color(0xFFE8E8E8),
              thickness: 2,
            ),
            const SizedBox(
              height: 64,
            ),
            Image.asset('assest/ic_Viz.png'),
            const SizedBox(
              height: 32,
            ),
            const Text(
              'Congratulations! Your withdrawal request has been received. ',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: Appfont.SpaceGrotesk_medium,
                  fontWeight: FontWeight.w500,
                  color: AppColors.GREY800,
                  letterSpacing: -0.25),
            ),
            const SizedBox(
              height: 32,
            ),
            const Text(
              'The process will be completed within 24 hours.',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 15.5,
                  fontFamily: Appfont.Mukta_medium,
                  fontWeight: FontWeight.w500,
                  color: AppColors.GREY500,
                  letterSpacing: -0.15),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.35,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 52,
                width: 345,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(8)),
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(AppColors.GREEN)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Home(),
                        ));
                  },
                  child: const Text(
                    'Keep earning',
                    style: TextStyle(
                        fontSize: 15.5,
                        fontFamily: Appfont.SpaceGrotesk_medium,
                        fontWeight: FontWeight.w500,
                        color: AppColors.DARK_BLUE800,
                        letterSpacing: -0.25),
                  ),
                ),
              ),
            )
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
