import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pritesh/home/new_habits.dart';
import 'package:table_calendar/table_calendar.dart';

import 'home.dart';

class Analytics extends StatefulWidget {
  const Analytics({Key? key}) : super(key: key);

  @override
  State<Analytics> createState() => _AnalyticsState();
}

class _AnalyticsState extends State<Analytics> {
  List<String> listOfDays = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"];

  final List<String> _weekDays = [
    'MON',
    'TUE',
    'WED',
    'THU',
    'FRI',
    'SAT',
    'SUN'
  ];
  final List<String> _monthNames = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];
  List<bool> status1 = [
    true,
    true,
    true,
    false,
    true,
    true,
    true,
    false,
    true,
    false,
    true,
    true,
    true,
    false,
    true,
    true,
    true,
    false,
    true,
    false,
    true,
    true,
    true,
    false,
    true,
    true,
    true,
    false,
    true,
    false,
    true,
  ];

  // get calendar for current month
  /* void _getCalendar() {
    _sequentialDates = CustomCalendar().getMonthCalendar(
        _currentDateTime.month, _currentDateTime.year,
        startWeekDay: StartWeekDay.monday);
  }*/
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF3E9),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Image.asset("assest/ic_back.png")),
                      const Center(
                        child: Text(
                          'Read A Book',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              color: const Color(0xFF573353),
                              letterSpacing: -1,
                              fontFamily: 'Manrope'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 7),
                        child: Image.asset("assest/ic_edit.png"),
                      ),
                    ]),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  height: 100,
                  width: 374,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color(0xFFFFFFFF)),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 12,
                      ),
                      Container(
                          height: 75,
                          width: 75,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assest/ic_tant.png'),
                                  filterQuality: FilterQuality.high),
                              borderRadius: BorderRadius.circular(12),
                              color:
                                  const Color(0xFFFDA758).withOpacity(0.10))),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Read a Book',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: const Color(0xFF573353),
                                letterSpacing: -1,
                                fontFamily: 'Manrope'),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Image.asset('assest/ic_notification2.png'),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Repeat everyday',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: const Color(0xFF573353)
                                        .withOpacity(0.50),
                                    fontFamily: 'Manrope-medium'),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Row(
                            children: [
                              Image.asset('assest/ic_repeat-button 1.png'),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Reminders: 5:00 am',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: const Color(0xFF573353)
                                        .withOpacity(0.50),
                                    fontFamily: 'Manrope-medium'),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),

              // Calender code //

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  height: 530,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 5,
                    ),
                    child: TableCalendar(
                      startingDayOfWeek: StartingDayOfWeek.sunday,
                      rowHeight: 75,
                      firstDay: DateTime.utc(2010, 10, 16),
                      lastDay: DateTime.utc(2030, 3, 14),
                      focusedDay: DateTime.now(),
                      headerVisible: true,
                      headerStyle: const HeaderStyle(
                        formatButtonVisible: false,
                        titleCentered: true,
                        titleTextStyle: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Color(0xFF573353),
                            fontFamily: 'Manrope'),
                        leftChevronIcon: ImageIcon(
                          AssetImage('assest/ic_backword.png'),
                          color: Color(0xFF573353),
                        ),
                        rightChevronIcon: ImageIcon(
                          AssetImage('assest/ic_forword.png'),
                          color: Color(0xFF573353),
                        ),
                      ),
                      calendarStyle: const CalendarStyle(
                        isTodayHighlighted: false,
                      ),
                      calendarBuilders: CalendarBuilders(
                        defaultBuilder: (context, date, events) => Container(
                            height: 65,
                            margin: const EdgeInsets.symmetric(horizontal: 4.0),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: const Color(0xFFFFF3E9),
                                borderRadius: BorderRadius.circular(10.0)),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  date.day.toString(),
                                  style: const TextStyle(
                                      color: const Color(0xFF573353)),
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                Container(
                                  height: 32,
                                  width: 32,
                                  decoration: BoxDecoration(
                                      color: const Color(0xFFFC9D45),
                                      borderRadius: BorderRadius.circular(12)),
                                )
                              ],
                            )),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 17,
              ),
              Container(
                height: 30,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                      Color(0xFFFBEADB),
                      Color(0xFFFFF3E9),
                    ])),
              ),
              const SizedBox(
                height: 17,
              ),
              Text(
                "Analytics",
                style: TextStyle(
                    fontFamily: "Manrope-medium",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF573353).withOpacity(0.50)),
              ),
              const SizedBox(
                height: 22,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  height: 195,
                  width: 384,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const SizedBox(
                        height: 1,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Container(
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  const Text(
                                    '20 Days',
                                    style: TextStyle(
                                        fontFamily: "Klasik",
                                        fontSize: 24,
                                        letterSpacing: -2,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF573353)),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Longest Streak',
                                    style: TextStyle(
                                        fontFamily: "Manrope-medium",
                                        fontSize: 12,
                                        letterSpacing: -1,
                                        fontWeight: FontWeight.w500,
                                        color: const Color(0xFF573353)
                                            .withOpacity(0.50)),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Image.asset('assest/ic_Streak.png'),
                              Image.asset('assest/ic_vertical.png'),
                              Column(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(right: 15),
                                    child: Text(
                                      '0 Days',
                                      style: TextStyle(
                                          fontFamily: "Klasik",
                                          fontSize: 24,
                                          letterSpacing: -2,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFF573353)),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Current Streak',
                                    style: TextStyle(
                                        fontFamily: "Manrope-medium",
                                        fontSize: 12,
                                        letterSpacing: -1,
                                        fontWeight: FontWeight.w500,
                                        color: const Color(0xFF573353)
                                            .withOpacity(0.50)),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Image.asset('assest/ic_Lightning.png'),
                            ],
                          ),
                        ),
                      ),
                      const Divider(
                        thickness: 1,
                        color: Color(0xFFFFF3E9),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(right: 30),
                                  child: Text(
                                    '98 %',
                                    style: const TextStyle(
                                        fontFamily: "Klasik",
                                        fontSize: 24,
                                        letterSpacing: -2,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF573353)),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text(
                                    'Completion Rate',
                                    style: TextStyle(
                                        fontFamily: "Manrope-medium",
                                        fontSize: 12,
                                        letterSpacing: -1,
                                        fontWeight: FontWeight.w500,
                                        color: const Color(0xFF573353)
                                            .withOpacity(0.50)),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Image.asset('assest/ic_CompletionRate.png'),
                            Image.asset('assest/ic_vertical.png'),
                            Column(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(right: 60),
                                  child: Text(
                                    '7',
                                    style: const TextStyle(
                                        fontFamily: "Klasik",
                                        fontSize: 24,
                                        letterSpacing: -2,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF573353)),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text(
                                    'Average Easiness\nScore',
                                    style: TextStyle(
                                        fontFamily: "Manrope-medium",
                                        fontSize: 12,
                                        letterSpacing: -1,
                                        fontWeight: FontWeight.w500,
                                        color: const Color(0xFF573353)
                                            .withOpacity(0.50)),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Image.asset('assest/ic_Average.png'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 19),
                child: Container(
                  height: 55,
                  width: 374,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(8)),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xFFFDA758))),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (ctx) => AlertDialog(
                              insetPadding:
                                  EdgeInsets.symmetric(horizontal: 15),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              alignment: Alignment.bottomCenter,
                              content: Container(
                                height: 530,
                                child: Column(
                                  children: [
                                    Stack(
                                      overflow: Overflow.visible,
                                      children: [
                                        Image.asset('assest/ic_popimg.png'),
                                        Positioned(
                                            bottom: 289,
                                            left: 293,
                                            child: InkWell(
                                              onTap: () {
                                                Navigator.pop(context);
                                              },
                                              child: Image.asset(
                                                  'assest/ic_Close.png'),
                                            ))
                                      ],
                                    ),
                                    const Text(
                                      'Congratulations!',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 24,
                                          fontFamily: 'Klasik',
                                          letterSpacing: -1,
                                          color: Color(0xFF573353)),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: Text(
                                        '           Ut enim ad minim veniam, quis nostrud\n                           exercitation ullamco laboris',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                            fontFamily: 'Manrope-medium',
                                            letterSpacing: -1,
                                            color: const Color(0xFF573353)
                                                .withOpacity(0.50)),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    Container(
                                      height: 50,
                                      width: 345,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    const Color(0xFFFDA758))),
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    NewHabits(),
                                              ));
                                        },
                                        child: const Text(
                                          'Create New Habit',
                                          style: TextStyle(
                                              color: Color(0xFF573353),
                                              fontWeight: FontWeight.w700,
                                              fontSize: 16,
                                              fontFamily: 'Manrope'),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      height: 50,
                                      width: 334,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    const Color(0xFFFFF3E9))),
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: const Text(
                                          'Continue',
                                          style: const TextStyle(
                                              color: Color(0xFF573353),
                                              fontWeight: FontWeight.w700,
                                              fontSize: 16,
                                              fontFamily: 'Manrope'),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )));
                    },
                    child: const Text(
                      'Mark Habit as Complete',
                      style: TextStyle(
                          color: const Color(0xFF573353),
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          fontFamily: 'Manrope'),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 19),
                child: Container(
                  height: 55,
                  width: 374,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(8)),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xFFFFFFFF))),
                    onPressed: () {},
                    child: const Text(
                      'Mark Habit as Missed',
                      style: TextStyle(
                          color: Color(0xFF573353),
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          fontFamily: 'Manrope'),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Stack(
        children: [
          Container(
            width: double.infinity,
            child: Image.asset("assest/Rectangle.png"),
          ),
          Positioned(
              top: 29,
              left: 25,
              child: InkWell(
                  onTap: () {
                    setState(() {
                      pageindex = 0;
                    });
                  },
                  child: Image.asset("assest/ic_bn-1.png"))),
          Positioned(
              left: 107,
              top: 26,
              child: InkWell(
                  onTap: () {
                    setState(() {
                      pageindex = 1;
                    });
                  },
                  child: Image.asset("assest/ic_bn-2.png"))),
          Positioned(
              left: 266,
              top: 25,
              child: InkWell(
                  onTap: () {
                    setState(() {
                      pageindex = 2;
                    });
                  },
                  child: Image.asset("assest/ic_bn-3.png"))),
          Positioned(
              left: 340,
              top: 23,
              child: InkWell(
                  onTap: () {
                    setState(() {
                      pageindex = 3;
                    });
                  },
                  child: Image.asset("assest/ic_bn-4.png"))),
        ],
      ),
      floatingActionButton: Container(
        height: 45,
        width: 45,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              offset: Offset(0, 20),
              blurRadius: 60,
              color: Color(0xFFFC9D45).withOpacity(0.50))
        ]),
        child: FloatingActionButton(
            backgroundColor: const Color(0xFFFC9D45),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(64)),
            onPressed: () {},
            child: Image.asset('assest/ic_plus.png')),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  verticalDivider() {
    return Divider(
      height: 10,
      thickness: 5,
      color: Colors.greenAccent,
    );
  }
}
