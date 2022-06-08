import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../constant.dart';
import '../Refer/referScreen.dart';
import 'Withdraw/withdrawScreen.dart';
import 'notificationPage.dart';

class HomePage extends StatefulWidget {
  HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  User? user = FirebaseAuth.instance.currentUser;
  get user1 => FirebaseAuth.instance.currentUser;

  int currentchart = 0;
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  "\$0.9374",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: Appfont.SpaceGrotesk_medium,
                      fontSize: 14,
                      letterSpacing: 0.5,
                      color: AppColors.WHITE),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assest/ic_Color.png'),
                    const SizedBox(
                      width: 6,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "\$0.6532",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontFamily: Appfont.SpaceGrotesk_medium,
                              fontSize: 10,
                              letterSpacing: 0.5,
                              color: AppColors.WHITE),
                        ),
                        const Text(
                          "355.42",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontFamily: Appfont.SpaceGrotesk_medium,
                              fontSize: 10,
                              letterSpacing: 0.5,
                              color: AppColors.GREY400),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assest/ic_color2.png'),
                    const SizedBox(
                      width: 6,
                    ),
                    const Text(
                      "\$0.2842",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: Appfont.SpaceGrotesk_medium,
                          fontSize: 10,
                          letterSpacing: 0.5,
                          color: AppColors.WHITE),
                    ),
                  ],
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
      body: SafeArea(
        child: ListView(
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 24,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: AppColors.GREEN100),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 6,
                              width: 6,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: AppColors.GREEN),
                            ),
                            const Text(
                              'ON',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontFamily: Appfont.SpaceGrotesk_medium,
                                  fontSize: 14,
                                  letterSpacing: 1,
                                  color: AppColors.GREEN),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Text(
                        'Gathering (Wi-Fi)',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: Appfont.Mukta_medium,
                            fontSize: 14,
                            letterSpacing: -0.15,
                            color: AppColors.GREY700),
                      )
                    ],
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const NotificationSCreen(),
                            ));
                      },
                      child: Image.asset('assest/ic_notification.png'))
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                height: 267,
                decoration: BoxDecoration(
                    border:
                        Border.all(color: const Color(0xFfEFEFEF), width: 2),
                    borderRadius: BorderRadius.circular(12),
                    color: AppColors.WHITE),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset('assest/ic_Favicon.png'),
                              const SizedBox(
                                width: 4,
                              ),
                              const Text(
                                "Balance",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontFamily: Appfont.SpaceGrotesk_medium,
                                    fontSize: 16,
                                    letterSpacing: -0.25,
                                    color: AppColors.DARK_BLUE800),
                              )
                            ],
                          ),
                          const Text(
                            '\$19.0333',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontFamily: Appfont.SpaceGrotesk,
                                fontSize: 24,
                                letterSpacing: 1,
                                color: AppColors.DARK_BLUE800),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 13,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Divider(
                        color: Color(0xFFEFEFEF),
                        thickness: 2,
                      ),
                    ),
                    const SizedBox(
                      height: 13,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const WithDrawScreen(),
                              ));
                        },
                        child: Container(
                          height: 83,
                          decoration: BoxDecoration(
                              color: const Color(0xFF004267),
                              borderRadius: BorderRadius.circular(8)),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 18,
                              ),
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 12,
                                  ),
                                  Image.asset(
                                    'assest/ic_ps_icon1.png',
                                    height: 40,
                                    width: 40,
                                  ),
                                  const SizedBox(
                                    width: 12,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'Reach \$20 to request payout',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontFamily:
                                                Appfont.SpaceGrotesk_medium,
                                            fontSize: 15,
                                            letterSpacing: -0.25,
                                            color: AppColors.WHITE),
                                      ),
                                      Text(
                                        '90% complete',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontFamily:
                                                Appfont.SpaceGrotesk_medium,
                                            fontSize: 14,
                                            letterSpacing: -0.25,
                                            color: AppColors.GREY300),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 19,
                              ),
                              LinearPercentIndicator(
                                percent: 0.80,
                                width: 316,
                                linearGradient: const LinearGradient(colors: [
                                  Color(0xFF0FA3B1),
                                  Color(0xFF01DE89),
                                ]),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),

            //-------Mainchart Container----------//
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13),
              child: Container(
                height: 575,
                decoration: BoxDecoration(
                    color: AppColors.WHITE,
                    border:
                        Border.all(color: const Color(0xFFEFEFEF), width: 2),
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
                                        currentchart == 0
                                            ? AppColors.GREEN
                                            : AppColors.WHITE)),
                                child: Text(
                                  'Weekly',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: currentchart == 0
                                          ? AppColors.DARK_BLUE800
                                          : AppColors.GREY400,
                                      fontFamily: Appfont.SpaceGrotesk_medium,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 1),
                                ),
                                onPressed: () {
                                  setState(() {
                                    currentchart = 0;
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
                                        currentchart == 1
                                            ? AppColors.GREEN
                                            : AppColors.WHITE)),
                                child: Text(
                                  'Monthly',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: currentchart == 1
                                          ? AppColors.DARK_BLUE800
                                          : AppColors.GREY400,
                                      fontFamily: Appfont.SpaceGrotesk_medium,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 1),
                                ),
                                onPressed: () {
                                  setState(() {
                                    currentchart = 1;
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

                    currentchart == 0
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
                                                  fontFamily: Appfont
                                                      .SpaceGrotesk_medium,
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
                                                  color:
                                                      AppColors.DARK_BLUE800),
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
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20),
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
                                                  fontFamily: Appfont
                                                      .SpaceGrotesk_medium,
                                                  fontSize: 14,
                                                  letterSpacing: -0.25,
                                                  color: AppColors.GREY800),
                                            )
                                          ],
                                        ),
                                        Column(
                                          children: const [
                                            Text(
                                              '+\$49.9328',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontFamily:
                                                      Appfont.SpaceGrotesk,
                                                  fontSize: 24,
                                                  letterSpacing: 1,
                                                  color:
                                                      AppColors.DARK_BLUE800),
                                            ),
                                            Text(
                                              '11372.32MB shared',
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
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20),
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
                    currentchart == 0
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
                      height: 230,
                      child: SfCartesianChart(
                          enableAxisAnimation: true,
                          primaryXAxis: CategoryAxis(),
                          tooltipBehavior: _tooltipBehavior,
                          series: <ChartSeries>[
                            StackedColumnSeries<ChartData, String>(
                                dataSource: chartData,
                                legendIconType: LegendIconType.image,
                                color: const Color(0xFF06AED5),
                                enableTooltip: true,
                                name: 'Bandwidth Earnings ',
                                selectionBehavior: _selectionBehavior,
                                xValueMapper: (ChartData data, _) => data.x,
                                yValueMapper: (ChartData data, _) => data.y1),
                            StackedColumnSeries<ChartData, String>(
                                dataSource: chartData,
                                color: AppColors.GREEN,
                                enableTooltip: true,
                                name: 'Referral Earnings',
                                selectionBehavior: _selectionBehavior,
                                xValueMapper: (ChartData data, _) => data.x,
                                yValueMapper: (ChartData data, _) => data.y2),
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
              height: 24,
            ),
            //-------Community Container----------//

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13),
              child: Container(
                height: 170,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assest/ic_bg2.png'),
                        fit: BoxFit.fill)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Join our community',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: Appfont.SpaceGrotesk_medium,
                            fontSize: 20,
                            letterSpacing: -0.25,
                            color: AppColors.WHITE),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      const Text(
                        'Get access to quick support, updates\nand promotions',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: Appfont.Mukta_medium,
                            fontSize: 15.5,
                            letterSpacing: -0.15,
                            color: AppColors.WHITE),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
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
                                  'assest/ic_twitter.png',
                                  color: AppColors.BLUELIGHT,
                                ),
                                const SizedBox(
                                  width: 6,
                                ),
                                const Text(
                                  'Twitter',
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
                          const SizedBox(
                            width: 14,
                          ),
                          Container(
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
                                  'assest/ic_discot.png',
                                  color: AppColors.BLUELIGHT,
                                ),
                                const SizedBox(
                                  width: 6,
                                ),
                                const Text(
                                  'Discord',
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
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),

            //-------Community Container----------//

            const SizedBox(
              height: 24,
            ),
            //-------Refer Container----------//
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Container(
                height: 364,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: const DecorationImage(
                        image: AssetImage('assest/ic_bg3.png'),
                        fit: BoxFit.fill)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: ListView(
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Refer friends and get 10%\nlifetime commission,\nplus \$5 bonus',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: Appfont.SpaceGrotesk_medium,
                            fontSize: 20,
                            letterSpacing: -0.25,
                            color: AppColors.WHITE),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Text(
                        'Everyone who joins using your\nreferral link gets \$5 signup bonus.\nYou get a lifetime 10% commission\nand a \$5 bonus on their first payout.',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontFamily: Appfont.Mukta,
                            fontSize: 15.5,
                            letterSpacing: -0.15,
                            color: AppColors.GREY200),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Text(
                        'YOUR ERFERRAL LINK',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: Appfont.SpaceGrotesk_medium,
                            fontSize: 14,
                            letterSpacing: 1,
                            color: AppColors.GREEN),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 24),
                        child: Container(
                          height: 44,
                          decoration: BoxDecoration(
                              color: AppColors.DARK_BLUE800,
                              border: Border.all(
                                  color: AppColors.DARK_BLUE800, width: 2),
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
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 40,
                              width: 165,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: AppColors.GREEN500, width: 1),
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
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 15),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    const Text(
                                                      'Share your link to',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          fontFamily: Appfont
                                                              .SpaceGrotesk,
                                                          fontSize: 16,
                                                          color:
                                                              AppColors.GREY700,
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
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 15),
                                                child: GridView.builder(
                                                  itemCount: share.length,
                                                  shrinkWrap: true,
                                                  gridDelegate:
                                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                                          crossAxisCount: 2,
                                                          crossAxisSpacing: 12,
                                                          mainAxisSpacing: 12,
                                                          childAspectRatio:
                                                              2 / 0.5),
                                                  itemBuilder: (ctx, index) =>
                                                      Container(
                                                    height: 44,
                                                    width: 166,
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
                                                          share[index].img,
                                                        ),
                                                        const SizedBox(
                                                          width: 10,
                                                        ),
                                                        Text(
                                                          share[index].name,
                                                          style: const TextStyle(
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
                                          fontFamily:
                                              Appfont.SpaceGrotesk_medium,
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
                      ),
                    ],
                  ),
                ),
              ),
            ),
            //-------Refer Container----------//
          ],
        ),
      ),
    );
  }
}

class ChartData {
  ChartData(
    this.x,
    this.y1,
    this.y2,
  );
  final String x;
  final double y1;
  final double y2;
}
