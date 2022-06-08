import 'package:flutter/material.dart';

import '../../constant.dart';

class Devices extends StatefulWidget {
  const Devices({Key? key}) : super(key: key);

  @override
  State<Devices> createState() => _DevicesState();
}

class _DevicesState extends State<Devices> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCFCFC),
      body: ListView(
        children: [
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Devices',
                  style: TextStyle(
                      fontSize: 24,
                      fontFamily: Appfont.SpaceGrotesk,
                      fontWeight: FontWeight.w700,
                      color: AppColors.GREY800,
                      letterSpacing: -0.25),
                ),
                const Text(
                  '3 devices',
                  style: TextStyle(
                      fontSize: 15.5,
                      fontFamily: Appfont.Mukta,
                      fontWeight: FontWeight.w400,
                      color: AppColors.GREY500,
                      letterSpacing: -0.15),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15.5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              height: 290,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: const Color(0xFFEFEFEF), width: 2)),
              child: Column(children: [
                Container(
                  height: 84,
                  decoration: const BoxDecoration(
                      border: Border(
                          top: BorderSide.none,
                          left: BorderSide.none,
                          right: BorderSide.none)),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 16,
                      ),
                      Image.asset('assest/ic_phone.png'),
                      const SizedBox(
                        width: 16,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Yaesul’s Phone',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: Appfont.SpaceGrotesk_medium,
                                fontWeight: FontWeight.w500,
                                color: AppColors.GREY900,
                                letterSpacing: -0.25),
                          ),
                          Row(
                            children: [
                              Container(
                                height: 8,
                                width: 8,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: AppColors.GREEN),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              const Text(
                                'Active now',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: Appfont.Mukta_medium,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.GREEN700,
                                    letterSpacing: -0.15),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              const Text(
                                '3.3923 GB',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: Appfont.Mukta,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.GREY500,
                                    letterSpacing: -0.15),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const Divider(
                  color: Color(0xFFEFEFEF),
                  thickness: 2,
                ),
                Container(
                  height: 84,
                  decoration: const BoxDecoration(
                      border: Border(
                          top: BorderSide.none,
                          left: BorderSide.none,
                          right: BorderSide.none)),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 16,
                      ),
                      Image.asset('assest/ic_leptop.png'),
                      const SizedBox(
                        width: 16,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Yaesul’s Phone',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: Appfont.SpaceGrotesk_medium,
                                fontWeight: FontWeight.w500,
                                color: AppColors.GREY900,
                                letterSpacing: -0.25),
                          ),
                          Row(
                            children: [
                              Container(
                                height: 8,
                                width: 8,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: AppColors.GREEN),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              const Text(
                                'Active now',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: Appfont.Mukta_medium,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.GREEN700,
                                    letterSpacing: -0.15),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              const Text(
                                '3.3923 GB',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: Appfont.Mukta,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.GREY500,
                                    letterSpacing: -0.15),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const Divider(
                  color: Color(0xFFEFEFEF),
                  thickness: 2,
                ),
                Container(
                  height: 84,
                  decoration: const BoxDecoration(
                      border: Border(
                          top: BorderSide.none,
                          left: BorderSide.none,
                          right: BorderSide.none)),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 16,
                      ),
                      Image.asset('assest/ic_phone.png'),
                      const SizedBox(
                        width: 16,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Yaesul’s Phone',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: Appfont.SpaceGrotesk_medium,
                                fontWeight: FontWeight.w500,
                                color: AppColors.GREY900,
                                letterSpacing: -0.25),
                          ),
                          Row(
                            children: [
                              Container(
                                height: 8,
                                width: 8,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: AppColors.GREEN),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              const Text(
                                'Active now',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: Appfont.Mukta_medium,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.GREEN700,
                                    letterSpacing: -0.15),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              const Text(
                                '3.3923 GB',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: Appfont.Mukta,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.GREY500,
                                    letterSpacing: -0.15),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ]),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              height: 174,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage('assest/ic_bg4.png'), fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(8)),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset('assest/ic_alert.png'),
                        const SizedBox(
                          width: 8,
                        ),
                        const Text(
                          'Pro Tip',
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: Appfont.SpaceGrotesk_medium,
                              fontWeight: FontWeight.w500,
                              color: AppColors.GREEN,
                              letterSpacing: -0.25),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Use Repocket on other devices to\nmaximise your earning.\n\nSimply install the app on other devices\nand login with your existing account! ',
                          softWrap: true,
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: Appfont.SpaceGrotesk_Regular,
                              fontWeight: FontWeight.w400,
                              color: AppColors.WHITE,
                              letterSpacing: -0.25),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
