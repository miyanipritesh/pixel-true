import 'package:flutter/material.dart';

import '../../constant.dart';
import '../../screen/homeScreen.dart';

class NotificationSCreen extends StatefulWidget {
  const NotificationSCreen({Key? key}) : super(key: key);

  @override
  State<NotificationSCreen> createState() => _NotificationSCreenState();
}

class _NotificationSCreenState extends State<NotificationSCreen> {
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
                  child: const Icon(
                    Icons.arrow_back,
                    color: AppColors.GREY400,
                  ),
                ),
                const SizedBox(
                  width: 120,
                ),
                const Text(
                  'Notification',
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
              child: Container(
                height: 540,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border:
                        Border.all(color: const Color(0xFFEFEFEF), width: 2)),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      height: 80,
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: Color(0xFFEFEFEF), width: 2))),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 16,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 25),
                            child:
                                Image.asset('assest/ic_notificationicon1.png'),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Your referred user #YS03214\nsigned up',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: Appfont.SpaceGrotesk_medium,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.GREY900,
                                    letterSpacing: -0.25),
                              ),
                              Text(
                                'Today',
                                style: TextStyle(
                                    fontSize: 15.5,
                                    fontFamily: Appfont.Mukta,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.GREY500,
                                    letterSpacing: -0.15),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 84,
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: Color(0xFFEFEFEF), width: 2))),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 16,
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 16,
                              ),
                              Image.asset('assest/ic_notificationicon2.png'),
                              const SizedBox(
                                width: 16,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'New update: version 3.02',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: Appfont.SpaceGrotesk_medium,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.GREY900,
                                        letterSpacing: -0.25),
                                  ),
                                  Text(
                                    '5 days ago',
                                    style: TextStyle(
                                        fontSize: 15.5,
                                        fontFamily: Appfont.Mukta,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.GREY500,
                                        letterSpacing: -0.15),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 45,
                              ),
                              const Icon(
                                Icons.arrow_forward,
                                color: AppColors.GREY300,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 125,
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: Color(0xFFEFEFEF), width: 2))),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 16,
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 16,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 30),
                                child: Image.asset(
                                    'assest/ic_notificationicon3.png'),
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Check out our community\nfor quick supports, updates,\nand promotions ',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: Appfont.SpaceGrotesk_medium,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.GREY900,
                                        letterSpacing: -0.25),
                                  ),
                                  Text(
                                    '8 days ago',
                                    style: TextStyle(
                                        fontSize: 15.5,
                                        fontFamily: Appfont.Mukta,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.GREY500,
                                        letterSpacing: -0.15),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 22,
                              ),
                              const Icon(
                                Icons.arrow_forward,
                                color: AppColors.GREY300,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 125,
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: Color(0xFFEFEFEF), width: 2))),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 16,
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 16,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 30),
                                child: Image.asset(
                                    'assest/ic_notificationicon4.png'),
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Your referred user #GR03214\ncompleted their first payout. \$5\nbonus is added to your balance.',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: Appfont.SpaceGrotesk_medium,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.GREY900,
                                        letterSpacing: -0.25),
                                  ),
                                  Text(
                                    '8 days ago',
                                    style: TextStyle(
                                        fontSize: 15.5,
                                        fontFamily: Appfont.Mukta,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.GREY500,
                                        letterSpacing: -0.15),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 103,
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 16,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child:
                                Image.asset('assest/ic_notificationicon5.png'),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              SizedBox(
                                height: 16,
                              ),
                              Text(
                                'You linked a new device: Goran’s\nLaptop',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: Appfont.SpaceGrotesk_medium,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.GREY900,
                                    letterSpacing: -0.25),
                              ),
                              Text(
                                'A week ago',
                                style: TextStyle(
                                    fontSize: 15.5,
                                    fontFamily: Appfont.Mukta,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.GREY500,
                                    letterSpacing: -0.15),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
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
