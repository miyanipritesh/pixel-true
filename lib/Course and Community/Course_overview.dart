import 'package:flutter/material.dart';
import 'package:pritesh/Course%20and%20Community/coursefull_screen.dart';
import 'package:pritesh/home/homepage.dart';

class CourseOverView extends StatefulWidget {
  const CourseOverView({Key? key}) : super(key: key);

  @override
  State<CourseOverView> createState() => _CourseOverViewState();
}

class _CourseOverViewState extends State<CourseOverView> {
  String newvalue = 'Popular';
  String? newvalue1;
  var item = [
    'Popular',
    'Popular 1',
    'Popular 2',
    'Popular 3',
    'Popular 4',
    'Popular 5',
  ];
  var item1 = [
    'filter',
    'Popular 1',
    'Popular 2',
  ];

  List img = ['assest/ic_img1.png', 'assest/ic_img2.png'];
  List des = [
    '30 Day Journal Challenge - Establish a Habit of Daily Journaling',
    'Self Help Series: How to Create and Maintain Good Habits'
  ];
  List time = ['2h 41m', '1h 41m'];
  List lessons = ['37 Lessons', '25 Lessons'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assest/ic_bg3.png'),
                alignment: Alignment.bottomCenter)),
        child: Column(
          children: [
            SizedBox(
              height: 39,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              Image.asset("assest/ic_more.png"),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 55),
                child: Text(
                  'Courses',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: Color(0xFF573353),
                      letterSpacing: -1,
                      fontFamily: 'Manrope'),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset("assest/ic_serarch.png"),
            ]),
            SizedBox(
              height: 41,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Image.asset("assest/ic_header.png"),
            ),
            SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Text(
                    'Sort By:',
                    style: TextStyle(
                        fontFamily: "Manrope",
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Color(0xFF573353)),
                  ),
                  Container(
                    height: 33,
                    width: 175,
                    decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        border:
                            Border.all(color: Color.fromRGBO(87, 51, 83, 0.1)),
                        borderRadius: BorderRadius.circular(12)),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        icon: Padding(
                          padding: const EdgeInsets.only(right: 14, top: 3),
                          child: Center(
                              child: ImageIcon(
                                  AssetImage('assest/ic_down arror.png'))),
                        ),
                        isExpanded: true,
                        items: item
                            .map((e) => DropdownMenuItem(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text(
                                      e,
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'Manrope',
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFF573353)),
                                    ),
                                  ),
                                  value: e,
                                ))
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            newvalue = value as String;
                          });
                        },
                        value: newvalue,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 21,
                  ),
                  Container(
                    height: 33,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        border:
                            Border.all(color: Color.fromRGBO(87, 51, 83, 0.1)),
                        borderRadius: BorderRadius.circular(12)),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        icon: Padding(
                          padding: const EdgeInsets.only(right: 14, top: 3),
                          child: Center(
                              child: ImageIcon(
                            AssetImage('assest/ic_down arror.png'),
                            color: Color(0xFFFC9D45),
                          )),
                        ),
                        isExpanded: true,
                        items: item1
                            .map((e) => DropdownMenuItem(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text(
                                      e,
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'Manrope',
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFFFC9D45)),
                                    ),
                                  ),
                                  value: e,
                                ))
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            newvalue1 = value as String;
                          });
                        },
                        value: newvalue1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                height: 500,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: img.length,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => CourseFullScreen(
                                        item: img[index],
                                        descri: des[index],
                                        lession: lessons[index],
                                        time: time[index]),
                                  ));
                            },
                            child: Container(
                              height: 273,
                              width: 374,
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Column(
                                children: [
                                  Image.asset(img[index]),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 12, right: 11, top: 8),
                                    child: Text(
                                      des[index],
                                      style: TextStyle(
                                          letterSpacing: -1,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 18,
                                          color: Color(0xFF573353)),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Container(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 12),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                time[index],
                                                style: TextStyle(
                                                    letterSpacing: -1,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 12,
                                                    color: Color(0xFF573353)),
                                              ),
                                              Image.asset("assest/ic_share.png")
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 12),
                                          child: Align(
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                              lessons[index],
                                              style: TextStyle(
                                                  letterSpacing: -1,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 12,
                                                  color: Color(0xFF573353)
                                                      .withOpacity(0.50)),
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
                          SizedBox(
                            height: 13,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
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
              top: 29, left: 25, child: Image.asset("assest/ic_bn-1.png")),
          Positioned(
              left: 107, top: 26, child: Image.asset("assest/ic_bn-2.png")),
          Positioned(
              left: 266, top: 25, child: Image.asset("assest/ic_bn-3.png")),
          Positioned(
              left: 340, top: 23, child: Image.asset("assest/ic_bn-4.png")),
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
                    builder: (context) => HomePage(),
                  ));
            },
            child: Image.asset('assest/ic_plus.png')),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
