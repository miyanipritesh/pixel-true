import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:numberpicker/numberpicker.dart';

import 'analytics.dart';
import 'home.dart';

class NewHabits extends StatefulWidget {
  const NewHabits({Key? key}) : super(key: key);

  @override
  State<NewHabits> createState() => _NewHabitsState();
}

class _NewHabitsState extends State<NewHabits> {
  bool status = false;
  int current = 0;
  int _currentValue = 4;
  int _currentValue1 = 28;
  int currentindex = 0;
  List<String> listOfDays = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"];
  DateTime dateTime = DateTime.now();
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
  ];
  List<bool> status2 = [
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
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Color(0xFFFFF3E9),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assest/ic_bg3.png'),
                alignment: Alignment.bottomCenter)),
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 45,
                  ),
                  Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Image.asset("assest/ic_back.png")),
                        SizedBox(
                          width: 88,
                        ),
                        Text(
                          'New Habit',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              color: Color(0xFF573353),
                              letterSpacing: -1,
                              fontFamily: 'Manrope'),
                        ),
                      ]),
                  SizedBox(
                    height: 14,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 49,
                          width: 290,
                          child: TextField(
                            textAlignVertical: TextAlignVertical.bottom,
                            decoration: InputDecoration(
                                hintText: 'Enter habit name',
                                hintStyle: TextStyle(
                                    fontFamily: 'Manrope-medium',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 13,
                                    color: Color(0xFF573353).withOpacity(0.50)),
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide.none)),
                          ),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Stack(
                          overflow: Overflow.visible,
                          children: [
                            Container(
                              height: 49,
                              width: 48,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Image.asset("assest/ic_menu.png"),
                            ),
                            Positioned(
                              left: 33,
                              bottom: 34,
                              child: Container(
                                height: 18.33,
                                width: 18.33,
                                decoration: BoxDecoration(
                                    color: Color(0xFFFC9D45),
                                    borderRadius: BorderRadius.circular(12)),
                                child: Center(
                                  child: Icon(
                                    Icons.add,
                                    size: 15,
                                    color: Color(0xFFFFFFFF),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 123,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xFFFFFFFF)),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, top: 17, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Habit Frequency",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                letterSpacing: -1,
                                fontFamily: 'Manrope-medium',
                                color: Color(0xFF573353)),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Analytics(),
                                  ));
                            },
                            child: Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Custom",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16,
                                        letterSpacing: -1,
                                        fontFamily: 'Manrope',
                                        color: Color(0xFFFDA758)),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Image.asset(
                                    'assest/ic_forword.png',
                                    color: Color(0xFFFDA758),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Divider(
                      thickness: 1,
                      color: Color(0xFFFFF3E9),
                    ),
                    Container(
                      height: 60,
                      width: 350,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (context, index) => Row(
                          children: [
                            SizedBox(
                              width: 6,
                            ),
                            Container(
                              height: 60,
                              width: 35,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    listOfDays[DateTime.now()
                                                .add(Duration(days: index))
                                                .weekday -
                                            1]
                                        .toString(),
                                    style: TextStyle(
                                        fontFamily: 'Manrope',
                                        fontWeight: FontWeight.w700,
                                        fontSize: 10,
                                        color: Color(0xFF573353)
                                            .withOpacity(0.50)),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  status2[index] == true
                                      ? Container(
                                          margin: EdgeInsets.only(top: 1),
                                          height: 34,
                                          width: 34,
                                          decoration: BoxDecoration(
                                              color: Color(0xFFFFF3E9),
                                              borderRadius:
                                                  BorderRadius.circular(12)),
                                          child: Column(
                                            children: [
                                              Align(
                                                child: Container(
                                                  margin: EdgeInsets.only(
                                                      top: 6, right: 5),
                                                  height: 28,
                                                  width: 28,
                                                  child: Image.asset(
                                                    'assest/ic_2.png',
                                                  ),
                                                ),
                                              )
                                            ],
                                          ))
                                      : Container(
                                          height: 34,
                                          width: 34,
                                          decoration: BoxDecoration(
                                              color: Color(0xFFFC9D45),
                                              borderRadius:
                                                  BorderRadius.circular(12)),
                                        ),
                                ],
                              ),
                            ),
                            Container(
                              child: VerticalDivider(
                                thickness: 1,
                                color: Color(0xFFFFF3E9),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: InkWell(
                child: Container(
                  height: 50,
                  width: 374,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Reminder',
                        style: TextStyle(
                            letterSpacing: -1,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Manrope-medium',
                            fontSize: 16,
                            color: Color(0xFF573353)),
                      ),
                      SizedBox(width: 155),
                      Text(
                        '10:00AM',
                        style: TextStyle(
                            letterSpacing: -1,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Manrope',
                            fontSize: 16,
                            color: Color(0xFFFDA758)),
                      ),
                      SizedBox(width: 8),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 3),
                          child: InkWell(
                            onTap: () {
                              _bottomsheet();
                            },
                            child: Image.asset("assest/ic_forword.png",
                                color: Color(0xFFFDA758)),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 50,
                width: 374,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Notification',
                      style: TextStyle(
                          letterSpacing: -1,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Manrope-medium',
                          fontSize: 16,
                          color: Color(0xFF573353)),
                    ),
                    SizedBox(width: 175),
                    FlutterSwitch(
                      width: 54.0,
                      height: 30.0,
                      valueFontSize: 10.0,
                      toggleSize: 22.0,
                      activeToggleColor: Color(0xFF573353),
                      inactiveToggleColor: Color(0xFF573353),
                      value: status,
                      activeColor: Color(0xFF573353).withOpacity(0.10),
                      inactiveColor: Color(0xFF573353).withOpacity(0.10),
                      activeTextColor: Color(0xFF573353),
                      inactiveTextColor: Color(0xFF573353),
                      borderRadius: 30.0,
                      padding: 4.0,
                      showOnOff: true,
                      onToggle: (val) {
                        setState(() {
                          status = val;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
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
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NewHabits(),
                  ));
            },
            child: Image.asset('assest/ic_plus.png')),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  _bottomsheet() {
    showMaterialModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12.0),
            topRight: Radius.circular(12.0),
          ),
        ),
        builder: (context) {
          return StatefulBuilder(
            builder: (BuildContext context,
                void Function(void Function()) setState) {
              return SizedBox(
                  height: 540,
                  child: Column(
                    children: [
                      Container(
                        height: 440,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: GridView.builder(
                              itemCount: 10,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 3,
                                      crossAxisSpacing: 5,
                                      childAspectRatio: 4 / 3,
                                      mainAxisSpacing: 5),
                              itemBuilder: (ctx, index) => Container(
                                    height: 40,
                                    width: 110,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: status1[index] == true
                                            ? Color(0xFFFFF3E9)
                                            : Color(0xFFC8C1C8)),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Text(
                                          '06:00 AM',
                                          style: TextStyle(
                                              fontFamily: '',
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xFF573353)),
                                        ),
                                        SizedBox(
                                          height: 12,
                                        ),
                                        FlutterSwitch(
                                          width: 54.0,
                                          height: 30.0,
                                          valueFontSize: 10.0,
                                          toggleSize: 22.0,
                                          activeToggleColor:
                                              status1[index] == true
                                                  ? Color(0xFFFDA758)
                                                  : Color(0xFF573353),
                                          inactiveToggleColor:
                                              Color(0xFF573353),
                                          value: status1[index],
                                          activeColor: status1[index] == true
                                              ? Color(0xFFFDA758)
                                                  .withOpacity(0.20)
                                              : Color(0xFF573353),
                                          inactiveColor: Color(0xFF573353)
                                              .withOpacity(0.10),
                                          activeTextColor:
                                              status1[index] == true
                                                  ? Color(0xFFFDA758)
                                                  : Color(0xFF573353),
                                          inactiveTextColor: Color(0xFF573353),
                                          borderRadius: 30.0,
                                          padding: 4.0,
                                          showOnOff: true,
                                          onToggle: (val) {
                                            setState(() {
                                              status1[index] = val;
                                            });
                                          },
                                        ),
                                      ],
                                    ),
                                  )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 60,
                              width: 280,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8)),
                              child: ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Color(0xFFFDA758))),
                                onPressed: () {
                                  /* DatePicker.showTime12hPicker(context,
                                    showTitleActions: true,
                                    currentTime: DateTime.now(),
                                    onConfirm: (time) {
                                  setState(() {
                                    var pickedtime =
                                        "Picked time is : ${time.hour} : ${time.minute} ";

                                    print(pickedtime);
                                  });
                                });*/
                                  /*  showMaterialModalBottomSheet(
                                    builder: (BuildContext context) {
                                      return SizedBox(
                                        height: 200,
                                        child: Column(
                                          children: [
                                            TimePickerSpinner(
                                              is24HourMode: false,
                                              normalTextStyle: TextStyle(
                                                  fontSize: 24,
                                                  color: Colors.deepOrange),
                                              highlightedTextStyle: TextStyle(
                                                  fontSize: 24,
                                                  color: Colors.yellow),
                                              spacing: 50,
                                              itemHeight: 80,
                                              isForce2Digits: true,
                                              minutesInterval: 15,
                                              onTimeChange: (time) {
                                                setState(() {
                                                  dateTime = time;
                                                });
                                              },
                                            ),
                                            Container(
                                              child: Text(
                                                dateTime.hour
                                                        .toString()
                                                        .padLeft(2, '0') +
                                                    ':' +
                                                    dateTime.minute
                                                        .toString()
                                                        .padLeft(2, '0') +
                                                    ':' +
                                                    dateTime.second
                                                        .toString()
                                                        .padLeft(2, '0'),
                                                style: TextStyle(
                                                    fontSize: 24,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                            )
                                          ],
                                        ),
                                      );
                                    },
                                    context: context);*/

                                  showModalBottomSheet(
                                    builder: (BuildContext context) {
                                      return StatefulBuilder(
                                        builder: (BuildContext context,
                                            void Function(void Function())
                                                setState) {
                                          return Container(
                                            height: 300,
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 20,
                                                          top: 16,
                                                          right: 20),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      GestureDetector(
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                        child: Text(
                                                          'Cancel',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontFamily:
                                                                  'Manrope',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              color: Color(
                                                                  0xFFFC9D45)),
                                                        ),
                                                      ),
                                                      Text(
                                                        'Add Reminders',
                                                        style: TextStyle(
                                                            fontSize: 17,
                                                            fontFamily:
                                                                'Manrope',
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            color: Color(
                                                                0xFF573353)),
                                                      ),
                                                      GestureDetector(
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                        child: Text(
                                                          'Save',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontFamily:
                                                                  'Manrope',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              color: Color(
                                                                  0xFFFC9D45)),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 16,
                                                ),
                                                Divider(
                                                  thickness: 1,
                                                  color: Color(0xFFFFF3E9),
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    NumberPicker(
                                                      selectedTextStyle:
                                                          TextStyle(
                                                              fontSize: 32,
                                                              fontFamily:
                                                                  'Manrope',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              color: Color(
                                                                  0xFF573353)),
                                                      zeroPad: true,
                                                      haptics: true,
                                                      value: _currentValue,
                                                      minValue: 0,
                                                      maxValue: 12,
                                                      onChanged: (value) =>
                                                          setState(() =>
                                                              _currentValue =
                                                                  value),
                                                    ),
                                                    Text(
                                                      ':',
                                                      style: TextStyle(
                                                          fontSize: 20),
                                                    ),
                                                    NumberPicker(
                                                      selectedTextStyle:
                                                          TextStyle(
                                                              fontSize: 32,
                                                              fontFamily:
                                                                  'Manrope',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              color: Color(
                                                                  0xFF573353)),
                                                      value: _currentValue1,
                                                      minValue: 0,
                                                      maxValue: 60,
                                                      onChanged: (value) =>
                                                          setState(() =>
                                                              _currentValue1 =
                                                                  value),
                                                    ),
                                                  ],
                                                ),
                                                Expanded(
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      InkWell(
                                                        onTap: () {
                                                          setState(() {
                                                            currentindex = 0;
                                                          });
                                                        },
                                                        child: Container(
                                                          height: 60,
                                                          width: 190,
                                                          color: currentindex ==
                                                                  0
                                                              ? Color(
                                                                  0xFFFDA758)
                                                              : Color(
                                                                  0xFFFFF3E9),
                                                          child: Center(
                                                            child: Text(
                                                              'am',
                                                              style: TextStyle(
                                                                  fontSize: 22,
                                                                  fontFamily: currentindex == 0
                                                                      ? 'Manrope'
                                                                      : 'Manrope-medium',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700,
                                                                  color: currentindex ==
                                                                          0
                                                                      ? Color(
                                                                          0xFF573353)
                                                                      : Color(
                                                                          0xFFFDA758)),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      InkWell(
                                                        onTap: () {
                                                          setState(() {
                                                            currentindex = 1;
                                                          });
                                                        },
                                                        child: Container(
                                                          height: 60,
                                                          width: 190,
                                                          color: currentindex ==
                                                                  1
                                                              ? Color(
                                                                  0xFFFDA758)
                                                              : Color(
                                                                  0xFFFFF3E9),
                                                          child: Center(
                                                            child: Text(
                                                              'pm',
                                                              style: TextStyle(
                                                                fontSize: 22,
                                                                fontFamily:
                                                                    currentindex ==
                                                                            1
                                                                        ? 'Manrope'
                                                                        : 'Manrope-medium',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                color: currentindex ==
                                                                        1
                                                                    ? Color(
                                                                        0xFF573353)
                                                                    : Color(
                                                                        0xFFFDA758),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          );
                                        },
                                      );
                                    },
                                    context: context,
                                  );
                                },
                                child: Text(
                                  'Add Reminder',
                                  style: TextStyle(
                                      color: Color(0xFF573353),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                      fontFamily: 'Manrope'),
                                ),
                              ),
                            ),
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assest/ic_almar.png')),
                                  border: Border.all(
                                    color: Color(0xFF573353).withOpacity(0.30),
                                  ),
                                  borderRadius: BorderRadius.circular(12)),
                            )
                          ],
                        ),
                      ),
                    ],
                  ));
            },
          );
        });
  }
}
