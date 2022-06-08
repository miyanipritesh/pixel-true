import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../constant.dart';
import '../Home/homepage.dart';

List share = [
  Share(name: "Facebook", img: 'assest/ic_facebook2.png'),
  Share(name: "Twitter", img: 'assest/ic_twitter3.png'),
  Share(name: "LinkedIn", img: 'assest/ic_linkin.png'),
  Share(name: "Discord", img: 'assest/ic_discot.png'),
  Share(name: "Telegram", img: 'assest/ic_telegram.png'),
  Share(name: "Reddit", img: 'assest/ic_reddit.png'),
  Share(name: "Instagram", img: 'assest/ic_instagram.png'),
  Share(name: "Pinterest", img: 'assest/ic_pinsc.png'),
];

class ReferScrren extends StatefulWidget {
  const ReferScrren({Key? key}) : super(key: key);

  @override
  State<ReferScrren> createState() => _ReferScrrenState();
}

class _ReferScrrenState extends State<ReferScrren> {
  int currentchart1 = 0;
  late SelectionBehavior _selectionBehavior;
  late TooltipBehavior _tooltipBehavior;
  bool state = false;
  final List<ChartData> chartData = [
    ChartData(
      '02/28',
      0.5,
      0.7,
    ),
    ChartData(
      '03/01',
      0.2,
      0.8,
    ),
    ChartData(
      '03/02',
      0.5,
      0.4,
    ),
    ChartData(
      '03/03',
      0.1,
      0,
    ),
    ChartData(
      '03/04',
      0.9,
      0.4,
    ),
    ChartData(
      '03/05',
      0.1,
      0.8,
    ),
    ChartData(
      '03/06',
      0.1,
      0.8,
    ),
  ];

  List share = [
    Share(name: "Facebook", img: 'assest/ic_facebook2.png'),
    Share(name: "Twitter", img: 'assest/ic_twitter3.png'),
    Share(name: "LinkedIn", img: 'assest/ic_linkin.png'),
    Share(name: "Discord", img: 'assest/ic_discot.png'),
    Share(name: "Telegram", img: 'assest/ic_telegram.png'),
    Share(name: "Reddit", img: 'assest/ic_reddit.png'),
    Share(name: "Instagram", img: 'assest/ic_instagram.png'),
    Share(name: "Pinterest", img: 'assest/ic_pinsc.png'),
  ];

  @override
  void initState() {
    _selectionBehavior = SelectionBehavior(
      enable: true,
    );
    _tooltipBehavior = TooltipBehavior(
        builder: (data, point, series, pointIndex, seriesIndex) {
          return Container(
            height: 94,
            width: 87,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.DARK_BLUE800),
            child: Column(
              children: [
                Text(
                  "${data.y1}",
                  style: const TextStyle(color: AppColors.WHITE),
                ),
                Text(
                  "${data.y2}",
                  style: const TextStyle(color: AppColors.WHITE),
                ),
                Text(
                  "${data.y1 + data.y2}",
                  style: const TextStyle(color: AppColors.WHITE),
                ),
              ],
            ),
          );
        },
        enable: true,
        color: Colors.black);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCFCFC),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
            child: Container(
              height: 459,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: AppColors.DARK_BLUE500),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Earn more by referring\n             friends',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: Appfont.SpaceGrotesk_medium,
                        fontSize: 24,
                        color: AppColors.WHITE,
                        letterSpacing: -0.25),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 162,
                        width: 165,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: AppColors.DARK_BLUE400),
                        child: Column(
                          children: const [
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Payout bonus',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontFamily: Appfont.SpaceGrotesk_medium,
                                  fontSize: 14,
                                  color: AppColors.WHITE,
                                  letterSpacing: -0.25),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              '\$5',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontFamily: Appfont.SpaceGrotesk,
                                  fontSize: 24,
                                  color: AppColors.GREEN,
                                  letterSpacing: 1),
                            ),
                            Text(
                              'When your referred\nuser completes their\n         first payout',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontFamily: Appfont.Mukta,
                                  fontSize: 14,
                                  color: AppColors.GREY300,
                                  letterSpacing: -0.15),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Container(
                        height: 162,
                        width: 165,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: AppColors.DARK_BLUE400),
                        child: Column(
                          children: const [
                            SizedBox(
                              height: 16,
                            ),
                            Text(
                              '   Lifelong\nCommission',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontFamily: Appfont.SpaceGrotesk_medium,
                                  fontSize: 14,
                                  color: AppColors.WHITE,
                                  letterSpacing: -0.25),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              '10%',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontFamily: Appfont.SpaceGrotesk,
                                  fontSize: 24,
                                  color: AppColors.GREEN,
                                  letterSpacing: 1),
                            ),
                            Text(
                              '     Earn an ongoing\n commission on yourn \n      friends’ earnings',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontFamily: Appfont.Mukta,
                                  fontSize: 14,
                                  color: AppColors.GREY300,
                                  letterSpacing: -0.15),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  //----------------------Alert Dialog-----------------//
                  InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (ctx) => AlertDialog(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12)),
                                insetPadding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                backgroundColor: AppColors.DARK_BLUE500,
                                content: Container(
                                  height: 480,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            'How to refer a friend',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontFamily:
                                                    Appfont.Mukta_medium,
                                                fontSize: 24,
                                                color: AppColors.WHITE,
                                                letterSpacing: -0.25),
                                          ),
                                          const SizedBox(
                                            width: 80,
                                          ),
                                          InkWell(
                                            onTap: () {
                                              Navigator.pop(context);
                                            },
                                            child: const Icon(
                                              Icons.clear,
                                              color: AppColors.WHITE,
                                            ),
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 16,
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 145, right: 20),
                                            child: Container(
                                              height: 28,
                                              width: 28,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  color:
                                                      AppColors.DARK_BLUE800),
                                              child: const Center(
                                                  child: Text(
                                                '1',
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontFamily: Appfont
                                                        .SpaceGrotesk_medium,
                                                    fontWeight: FontWeight.w800,
                                                    color: AppColors.WHITE,
                                                    letterSpacing: 1),
                                              )),
                                            ),
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                'Share your link with your friends ',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontFamily: Appfont
                                                        .SpaceGrotesk_medium,
                                                    fontWeight: FontWeight.w500,
                                                    color: AppColors.WHITE,
                                                    letterSpacing: -0.25),
                                              ),
                                              const SizedBox(
                                                height: 8,
                                              ),
                                              const Text(
                                                'The link has a referral code that is unique to\nyou',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontFamily: Appfont.Mukta,
                                                    fontWeight: FontWeight.w400,
                                                    color: AppColors.GREY200,
                                                    letterSpacing: -0.25),
                                              ),
                                              const SizedBox(
                                                height: 8,
                                              ),
                                              Container(
                                                height: 44,
                                                width: 255,
                                                decoration: BoxDecoration(
                                                    color:
                                                        AppColors.DARK_BLUE800,
                                                    border: Border.all(
                                                        color: AppColors
                                                            .DARK_BLUE800,
                                                        width: 2),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            6)),
                                                child: const Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 16, top: 9),
                                                  child: Text(
                                                    'https://repocket.co/r/x7sh8',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontFamily: Appfont
                                                            .SpaceGrotesk_Regular,
                                                        fontSize: 14,
                                                        letterSpacing: -0.25,
                                                        color: AppColors.WHITE),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 8,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    height: 36,
                                                    width: 122,
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: AppColors
                                                                .GREY300,
                                                            width: 1),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                        color: AppColors.GREEN),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Image.asset(
                                                          'assest/ic_copy.png',
                                                          color: AppColors
                                                              .DARK_BLUE800,
                                                        ),
                                                        const SizedBox(
                                                          width: 6,
                                                        ),
                                                        const Text(
                                                          'Copy',
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontFamily: Appfont
                                                                  .SpaceGrotesk_medium,
                                                              fontSize: 14,
                                                              letterSpacing:
                                                                  -0.25,
                                                              color: AppColors
                                                                  .DARK_BLUE800),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 14,
                                                  ),
                                                  Container(
                                                    height: 36,
                                                    width: 122,
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: AppColors
                                                                .GREY300,
                                                            width: 1),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                        color: AppColors.WHITE),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Image.asset(
                                                          'assest/ic_share.png',
                                                          color:
                                                              AppColors.GREY500,
                                                        ),
                                                        const SizedBox(
                                                          width: 6,
                                                        ),
                                                        const Text(
                                                          'Share',
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontFamily: Appfont
                                                                  .SpaceGrotesk_medium,
                                                              fontSize: 14,
                                                              letterSpacing:
                                                                  -0.25,
                                                              color: AppColors
                                                                  .GREY700),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 24,
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 25, right: 20),
                                            child: Container(
                                              height: 28,
                                              width: 28,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  color:
                                                      AppColors.DARK_BLUE800),
                                              child: const Center(
                                                  child: Text(
                                                '2',
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontFamily: Appfont
                                                        .SpaceGrotesk_medium,
                                                    fontWeight: FontWeight.w800,
                                                    color: AppColors.WHITE,
                                                    letterSpacing: 1),
                                              )),
                                            ),
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: const [
                                              Text(
                                                'Your friend gets \$5 bonus',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontFamily: Appfont
                                                        .SpaceGrotesk_medium,
                                                    fontWeight: FontWeight.w500,
                                                    color: AppColors.WHITE,
                                                    letterSpacing: -0.25),
                                              ),
                                              SizedBox(
                                                height: 8,
                                              ),
                                              Text(
                                                'After signing up using your referral link',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontFamily: Appfont.Mukta,
                                                    fontWeight: FontWeight.w400,
                                                    color: AppColors.GREY200,
                                                    letterSpacing: -0.25),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 24,
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 25, right: 20),
                                            child: Container(
                                              height: 28,
                                              width: 28,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  color:
                                                      AppColors.DARK_BLUE800),
                                              child: const Center(
                                                  child: Text(
                                                '3',
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontFamily: Appfont
                                                        .SpaceGrotesk_medium,
                                                    fontWeight: FontWeight.w800,
                                                    color: AppColors.WHITE,
                                                    letterSpacing: 1),
                                              )),
                                            ),
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: const [
                                              Text(
                                                'You get \$5 payout bonus',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontFamily: Appfont
                                                        .SpaceGrotesk_medium,
                                                    fontWeight: FontWeight.w500,
                                                    color: AppColors.WHITE,
                                                    letterSpacing: -0.25),
                                              ),
                                              SizedBox(
                                                height: 8,
                                              ),
                                              Text(
                                                'When your friend completes their first\npayout',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontFamily: Appfont.Mukta,
                                                    fontWeight: FontWeight.w400,
                                                    color: AppColors.GREY200,
                                                    letterSpacing: -0.25),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 24,
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 25, right: 20),
                                            child: Container(
                                              height: 28,
                                              width: 28,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  color:
                                                      AppColors.DARK_BLUE800),
                                              child: const Center(
                                                  child: Text(
                                                '4',
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontFamily: Appfont
                                                        .SpaceGrotesk_medium,
                                                    fontWeight: FontWeight.w800,
                                                    color: AppColors.WHITE,
                                                    letterSpacing: 1),
                                              )),
                                            ),
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: const [
                                              Text(
                                                'Keep enjoying +10% of their earning ',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontFamily: Appfont
                                                        .SpaceGrotesk_medium,
                                                    fontWeight: FontWeight.w500,
                                                    color: AppColors.WHITE,
                                                    letterSpacing: -0.25),
                                              ),
                                              SizedBox(
                                                height: 8,
                                              ),
                                              Text(
                                                'It’s a lifelong commission! ',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontFamily: Appfont.Mukta,
                                                    fontWeight: FontWeight.w400,
                                                    color: AppColors.GREY200,
                                                    letterSpacing: -0.25),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'How does it work?',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontFamily: Appfont.Mukta_medium,
                              fontSize: 14,
                              color: AppColors.GREEN,
                              letterSpacing: -0.15),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          size: 15,
                          color: AppColors.GREEN,
                        )
                      ],
                    ),
                  ),
                  //----------------------Alert Dialog-----------------//
                  const SizedBox(
                    height: 16,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 28),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'YOUR RERFERRAL LINK',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: Appfont.SpaceGrotesk_medium,
                            fontSize: 14,
                            letterSpacing: 1,
                            color: AppColors.GREY300),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    height: 44,
                    width: 340,
                    decoration: BoxDecoration(
                        color: AppColors.DARK_BLUE800,
                        border:
                            Border.all(color: AppColors.DARK_BLUE800, width: 2),
                        borderRadius: BorderRadius.circular(6)),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 16, top: 9),
                      child: Text(
                        'https://repocket.co/r/x7sh8',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontFamily: Appfont.SpaceGrotesk_Regular,
                            fontSize: 14,
                            letterSpacing: -0.25,
                            color: AppColors.WHITE),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 40,
                        width: 165,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: AppColors.DARK_BLUE800, width: 1),
                            borderRadius: BorderRadius.circular(8),
                            color: AppColors.GREEN),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assest/ic_copy.png',
                              color: AppColors.DARK_BLUE800,
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            const Text(
                              'Copy',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontFamily: Appfont.SpaceGrotesk_medium,
                                  fontSize: 14,
                                  letterSpacing: -0.25,
                                  color: AppColors.DARK_BLUE800),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 14,
                      ),
                      InkWell(
                        onTap: () {
                          showModalBottomSheet(
                              context: context,
                              builder: (ctx) => Container(
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    height: 325,
                                    child: Column(
                                      children: [
                                        const SizedBox(
                                          height: 33,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 15),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              const Text(
                                                'Share your link to',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w700,
                                                    fontFamily:
                                                        Appfont.SpaceGrotesk,
                                                    fontSize: 16,
                                                    color: AppColors.GREY700,
                                                    letterSpacing: -0.25),
                                              ),
                                              const SizedBox(
                                                width: 80,
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  Navigator.pop(context);
                                                },
                                                child: const Icon(
                                                  Icons.clear,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 21,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 15),
                                          child: GridView.builder(
                                            itemCount: share.length,
                                            shrinkWrap: true,
                                            gridDelegate:
                                                const SliverGridDelegateWithFixedCrossAxisCount(
                                                    crossAxisCount: 2,
                                                    crossAxisSpacing: 12,
                                                    mainAxisSpacing: 12,
                                                    childAspectRatio: 2 / 0.5),
                                            itemBuilder: (ctx, index) =>
                                                Container(
                                              height: 44,
                                              width: 166,
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: AppColors.GREY300,
                                                      width: 1),
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  color: AppColors.WHITE),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Image.asset(
                                                    share[index].img,
                                                  ),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(
                                                    share[index].name,
                                                    style: const TextStyle(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontFamily: Appfont
                                                            .SpaceGrotesk_medium,
                                                        fontSize: 14,
                                                        letterSpacing: -0.25,
                                                        color:
                                                            AppColors.GREY700),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ));
                        },
                        child: Container(
                          height: 40,
                          width: 165,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: AppColors.GREY300, width: 1),
                              borderRadius: BorderRadius.circular(8),
                              color: AppColors.WHITE),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assest/ic_share.png',
                                color: AppColors.GREY500,
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              const Text(
                                'Share',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontFamily: Appfont.SpaceGrotesk_medium,
                                    fontSize: 14,
                                    letterSpacing: -0.25,
                                    color: AppColors.GREY700),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'Referral earning',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontFamily: Appfont.SpaceGrotesk,
                  fontSize: 24,
                  color: AppColors.GREY800,
                  letterSpacing: -0.25),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          //-------Mainchart Container----------//
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13),
            child: Container(
              height: 555,
              decoration: BoxDecoration(
                  color: AppColors.WHITE,
                  border: Border.all(color: const Color(0xFFEFEFEF), width: 2),
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 36,
                          width: 152,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8)),
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  elevation: MaterialStateProperty.all(0),
                                  backgroundColor: MaterialStateProperty.all(
                                      currentchart1 == 0
                                          ? AppColors.GREEN
                                          : AppColors.WHITE)),
                              child: Text(
                                'Weekly',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: currentchart1 == 0
                                        ? AppColors.DARK_BLUE800
                                        : AppColors.GREY400,
                                    fontFamily: Appfont.SpaceGrotesk_medium,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 1),
                              ),
                              onPressed: () {
                                setState(() {
                                  currentchart1 = 0;
                                });
                              }),
                        ),
                        Container(
                          height: 36,
                          width: 152,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8)),
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  elevation: MaterialStateProperty.all(0),
                                  backgroundColor: MaterialStateProperty.all(
                                      currentchart1 == 1
                                          ? AppColors.GREEN
                                          : AppColors.WHITE)),
                              child: Text(
                                'Monthly',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: currentchart1 == 1
                                        ? AppColors.DARK_BLUE800
                                        : AppColors.GREY400,
                                    fontFamily: Appfont.SpaceGrotesk_medium,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 1),
                              ),
                              onPressed: () {
                                setState(() {
                                  currentchart1 = 1;
                                });
                              }),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  //----------------Weeklt container------------------//

                  currentchart1 == 0
                      ? Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            height: 174,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: const Color(0xFfEFEFEF), width: 2),
                                borderRadius: BorderRadius.circular(12),
                                color: AppColors.WHITE),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 16,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: const [
                                          Text(
                                            'This week',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontFamily:
                                                    Appfont.SpaceGrotesk_medium,
                                                fontSize: 14,
                                                letterSpacing: -0.25,
                                                color: AppColors.GREY800),
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: const [
                                          Text(
                                            '+\$4.9328',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontFamily:
                                                    Appfont.SpaceGrotesk,
                                                fontSize: 24,
                                                letterSpacing: 1,
                                                color: AppColors.DARK_BLUE800),
                                          ),
                                          Text(
                                            '1372.32MB shared',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontFamily:
                                                    Appfont.Mukta_medium,
                                                fontSize: 14,
                                                letterSpacing: -0.15,
                                                color: AppColors.GREY500),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 9,
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  child: Divider(
                                    color: Color(0xFFEFEFEF),
                                    thickness: 2,
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text(
                                        'Bandwidth earnings:',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontFamily: Appfont.Mukta,
                                            fontSize: 15.5,
                                            letterSpacing: -0.15,
                                            color: AppColors.GREY500),
                                      ),
                                      Text(
                                        '\$10.0221',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontFamily: Appfont.Mukta_medium,
                                            fontSize: 16,
                                            letterSpacing: 1,
                                            color: AppColors.GREY700),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text(
                                        'Referral earnings:',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontFamily: Appfont.Mukta,
                                            fontSize: 15.5,
                                            letterSpacing: -0.15,
                                            color: AppColors.GREY500),
                                      ),
                                      Text(
                                        '\$9.0221',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontFamily: Appfont.Mukta_medium,
                                            fontSize: 16,
                                            letterSpacing: 1,
                                            color: AppColors.GREY700),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 13,
                                ),
                              ],
                            ),
                          ),
                        )
                      : Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            height: 174,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: const Color(0xFfEFEFEF), width: 2),
                                borderRadius: BorderRadius.circular(12),
                                color: AppColors.WHITE),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 16,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: const [
                                          Text(
                                            'This month',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontFamily:
                                                    Appfont.SpaceGrotesk_medium,
                                                fontSize: 14,
                                                letterSpacing: -0.25,
                                                color: AppColors.GREY800),
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: const [
                                          Text(
                                            '+\$24.9328',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontFamily:
                                                    Appfont.SpaceGrotesk,
                                                fontSize: 24,
                                                letterSpacing: 1,
                                                color: AppColors.DARK_BLUE800),
                                          ),
                                          Text(
                                            '12372.32MB shared',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontFamily:
                                                    Appfont.Mukta_medium,
                                                fontSize: 14,
                                                letterSpacing: -0.15,
                                                color: AppColors.GREY500),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 9,
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  child: Divider(
                                    color: Color(0xFFEFEFEF),
                                    thickness: 2,
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text(
                                        'Bandwidth earnings:',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontFamily: Appfont.Mukta,
                                            fontSize: 15.5,
                                            letterSpacing: -0.15,
                                            color: AppColors.GREY500),
                                      ),
                                      Text(
                                        '\$10.0221',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontFamily: Appfont.Mukta_medium,
                                            fontSize: 16,
                                            letterSpacing: 1,
                                            color: AppColors.GREY700),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text(
                                        'Referral earnings:',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontFamily: Appfont.Mukta,
                                            fontSize: 15.5,
                                            letterSpacing: -0.15,
                                            color: AppColors.GREY500),
                                      ),
                                      Text(
                                        '\$9.0221',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontFamily: Appfont.Mukta_medium,
                                            fontSize: 16,
                                            letterSpacing: 1,
                                            color: AppColors.GREY700),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 13,
                                ),
                              ],
                            ),
                          ),
                        ),
                  const SizedBox(
                    height: 22,
                  ),
                  //----------------Weeklt container------------------//
                  currentchart1 == 0
                      ? SizedBox(
                          height: 25,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                CupertinoIcons.left_chevron,
                                color: AppColors.GREEN,
                              ),
                              SizedBox(
                                width: 25,
                              ),
                              Text(
                                'Feb 28 - Mar 6',
                                style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontFamily: Appfont.SpaceGrotesk_medium,
                                    fontSize: 14,
                                    color: AppColors.GREY800,
                                    letterSpacing: -0.25),
                              ),
                              SizedBox(
                                width: 25,
                              ),
                              Icon(
                                CupertinoIcons.right_chevron,
                                color: AppColors.GREEN,
                              ),
                            ],
                          ),
                        )
                      : SizedBox(
                          height: 25,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                CupertinoIcons.left_chevron,
                                color: AppColors.GREEN,
                              ),
                              SizedBox(
                                width: 25,
                              ),
                              Text(
                                'March 2022',
                                style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontFamily: Appfont.SpaceGrotesk_medium,
                                    fontSize: 14,
                                    color: AppColors.GREY800,
                                    letterSpacing: -0.25),
                              ),
                              SizedBox(
                                width: 25,
                              ),
                              Icon(
                                CupertinoIcons.right_chevron,
                                color: AppColors.GREEN,
                              ),
                            ],
                          ),
                        ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 210,
                    child: SfCartesianChart(
                        enableAxisAnimation: true,
                        primaryXAxis: CategoryAxis(),
                        tooltipBehavior: _tooltipBehavior,
                        series: <ChartSeries>[
                          StackedColumnSeries<ChartData, String>(
                              dataSource: chartData,
                              color: const Color(0xFF06AED5),
                              enableTooltip: true,
                              name: 'group1',
                              selectionBehavior: _selectionBehavior,
                              xValueMapper: (ChartData data, _) => data.x,
                              yValueMapper: (ChartData data, _) => data.y1),
                        ]),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Image.asset('assest/ic_dot.png'),
                          const SizedBox(
                            width: 8,
                          ),
                          const Text(
                            'Bandwidth Earnings ',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontFamily: Appfont.Mukta_medium,
                                fontSize: 16,
                                letterSpacing: -0.15,
                                color: AppColors.GREY600),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Row(
                        children: [
                          Image.asset('assest/ic_dot1.png'),
                          const SizedBox(
                            width: 8,
                          ),
                          const Text(
                            'Referral Earnings',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontFamily: Appfont.Mukta_medium,
                                fontSize: 16,
                                letterSpacing: -0.15,
                                color: AppColors.GREY600),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          //-------Mainchart Container----------//
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Referral earning',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontFamily: Appfont.SpaceGrotesk,
                      fontSize: 24,
                      color: AppColors.GREY800,
                      letterSpacing: -0.25),
                ),
                Text(
                  '0 users',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: Appfont.Mukta,
                      fontSize: 15.5,
                      color: AppColors.GREY500,
                      letterSpacing: -0.15),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
            child: Container(
              height: 52,
              decoration: BoxDecoration(
                  color: AppColors.WHITE,
                  border: Border.all(color: const Color(0xFFEFEFEF), width: 2),
                  borderRadius: BorderRadius.circular(6)),
              child: const Center(
                child: Text(
                  'It’s silent here. Start inviting your friends!',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: Appfont.SpaceGrotesk_medium,
                      fontSize: 14,
                      letterSpacing: -0.25,
                      color: AppColors.GREY500),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Share {
  String img;
  String name;

  Share({required this.name, required this.img});
}
