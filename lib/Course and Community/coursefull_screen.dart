import 'package:flutter/material.dart';

import '../home/home.dart';
import '../home/new_habits.dart';

class CourseFullScreen extends StatefulWidget {
  final item;
  final descri;
  final lession;
  final time;

  const CourseFullScreen({
    Key? key,
    this.item,
    this.descri,
    this.lession,
    this.time,
  }) : super(key: key);

  @override
  State<CourseFullScreen> createState() => _CourseFullScreenState();
}

class _CourseFullScreenState extends State<CourseFullScreen> {
  List lession = [
    Lessons(time: '2:16', title: 'Introduction'),
    Lessons(time: '3:16', title: 'Adopting Prompts to Covid-19...'),
    Lessons(time: '8:16', title: 'Choosing a Notebook'),
    Lessons(time: '6:16', title: 'Optional Supplies'),
    Lessons(time: '4:16', title: 'Day 1'),
  ];
  List lession1 = [
    'Introduction',
    'Adopting Prompts to Covid-19...',
    'Choosing a Notebook',
    'Optional Supplies',
    'Day 1',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF3E9),
      body: Column(
        children: [
          SizedBox(
            height: 39,
          ),
          Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 10,
                ),
                ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Image.asset("assest/ic_back.png"))),
                SizedBox(width: 32),
                Text(
                  '30 Day Journal Challenge...',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: Color(0xFF573353),
                      letterSpacing: -1,
                      fontFamily: 'Manrope'),
                ),
              ]),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Stack(children: [
              Container(
                height: 199,
                width: 374,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(image: AssetImage(widget.item))),
              ),
              Center(
                  child: Padding(
                padding: const EdgeInsets.only(top: 75),
                child: Image.asset('assest/ic_play2.png'),
              ))
            ]),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 410,
              width: 374,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 17, top: 25),
                    child: Text(
                      widget.descri,
                      style: TextStyle(
                          letterSpacing: -1,
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Color(0xFF573353)),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Divider(
                    thickness: 1,
                    color: Color(0xFFFFF3E9),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 17),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        '${widget.lession} (${widget.time})',
                        style: TextStyle(
                            letterSpacing: -1,
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Color(0xFF573353)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Divider(
                    thickness: 1,
                    color: Color(0xFFFFF3E9),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 6,
                      ),
                      Container(
                        height: 38,
                        width: 37,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assest/ic_play.png')),
                            color: Color(0xFFFDA758).withOpacity(0.10),
                            borderRadius: BorderRadius.circular(12)),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        '1 . Introduction',
                        style: TextStyle(
                            letterSpacing: -1,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Color(0xFF573353)),
                      ),
                      SizedBox(width: 154),
                      Text(
                        '2:16',
                        style: TextStyle(
                            letterSpacing: -1,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Color(0xFF573353).withOpacity(0.50)),
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 1,
                    color: Color(0xFFFFF3E9),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 6,
                      ),
                      Container(
                        height: 38,
                        width: 37,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assest/ic_lock2.png')),
                            color: Color(0xFFFDA758).withOpacity(0.10),
                            borderRadius: BorderRadius.circular(12)),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        '2.  Adopting Prompts to Covid-19...',
                        style: TextStyle(
                            letterSpacing: -1,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Color(0xFF573353)),
                      ),
                      SizedBox(width: 18),
                      Text(
                        '2:16',
                        style: TextStyle(
                            letterSpacing: -1,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Color(0xFF573353).withOpacity(0.50)),
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 1,
                    color: Color(0xFFFFF3E9),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 6,
                      ),
                      Container(
                        height: 38,
                        width: 37,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assest/ic_lock2.png')),
                            color: Color(0xFFFDA758).withOpacity(0.10),
                            borderRadius: BorderRadius.circular(12)),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        '3 . Choosing a Notebook',
                        style: TextStyle(
                            letterSpacing: -1,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Color(0xFF573353)),
                      ),
                      SizedBox(width: 88),
                      Text(
                        '1:16',
                        style: TextStyle(
                            letterSpacing: -1,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Color(0xFF573353).withOpacity(0.50)),
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 1,
                    color: Color(0xFFFFF3E9),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 6,
                      ),
                      Container(
                        height: 38,
                        width: 37,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assest/ic_lock2.png')),
                            color: Color(0xFFFDA758).withOpacity(0.10),
                            borderRadius: BorderRadius.circular(12)),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        '4.  Optional Supplies',
                        style: TextStyle(
                            letterSpacing: -1,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Color(0xFF573353)),
                      ),
                      SizedBox(width: 115),
                      Text(
                        '2:04',
                        style: TextStyle(
                            letterSpacing: -1,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Color(0xFF573353).withOpacity(0.50)),
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 1,
                    color: Color(0xFFFFF3E9),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 6,
                      ),
                      Container(
                        height: 38,
                        width: 37,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assest/ic_lock2.png')),
                            color: Color(0xFFFDA758).withOpacity(0.10),
                            borderRadius: BorderRadius.circular(12)),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        '5.  Day 1',
                        style: TextStyle(
                            letterSpacing: -1,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Color(0xFF573353)),
                      ),
                      SizedBox(width: 198),
                      Text(
                        '2:04',
                        style: TextStyle(
                            letterSpacing: -1,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Color(0xFF573353).withOpacity(0.50)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
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
}

class Lessons {
  String title;
  String time;
  Lessons({required this.time, required this.title});
}
