import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../screen/homeScreen.dart';

class TranstionList extends StatefulWidget {
  const TranstionList({Key? key}) : super(key: key);

  @override
  State<TranstionList> createState() => _TranstionListState();
}

class _TranstionListState extends State<TranstionList> {
  List date = [
    'Today',
    '2 weeks ago',
    'a month ago',
    '3 month ago',
    '3 month ago',
    '3 month ago',
  ];

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
                  width: 90,
                ),
                const Text(
                  'Transaction history',
                  style: TextStyle(
                      fontSize: 15,
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
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  Container(
                      constraints:
                          const BoxConstraints(maxHeight: double.infinity),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                            color: const Color(0xFFEFEFEF), width: 2),
                      ),
                      child: Column(
                        children: List.generate(
                          date.length,
                          (index) => Column(
                            children: [
                              ListTile(
                                leading: Image.asset('assest/ic_payple.png'),
                                title: const Text(
                                  'Withdrawal to Paypal',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: Appfont.SpaceGrotesk_medium,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.GREY900,
                                      letterSpacing: -0.25),
                                ),
                                subtitle: Text(
                                  date[index],
                                  style: const TextStyle(
                                      fontSize: 15.5,
                                      fontFamily: Appfont.Mukta,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.GREY500,
                                      letterSpacing: -0.15),
                                ),
                                trailing: const Text(
                                  '-\$20',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: Appfont.SpaceGrotesk_medium,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.GREY800,
                                      letterSpacing: 1),
                                ),
                              ),
                              const Divider(
                                color: Color(0xFFEFEFEF),
                                thickness: 2,
                              )
                            ],
                          ),
                        ),
                      )),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const Text(
              'Load more',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 15.5,
                  fontFamily: Appfont.Mukta_medium,
                  fontWeight: FontWeight.w500,
                  color: AppColors.GREY500,
                  letterSpacing: -0.15),
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
