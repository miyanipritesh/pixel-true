import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentDateSelectedIndex = 0; //For Horizontal Date
  ScrollController scrollController = ScrollController();
  List<String> listOfDays = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"];

  List<bool> ans = [
    true,
    false,
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF3E9),
      extendBody: true,
      body: Column(
        children: [
          Container(
            height: 285,
            child: Column(
              children: [
                SizedBox(
                  height: 45,
                ),
                Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Image.asset("assest/ic_Icons3.png"),
                      SizedBox(
                        width: 75,
                      ),
                      Text(
                        'Homepage',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            color: Color(0xFF573353),
                            letterSpacing: -1,
                            fontFamily: 'Manrope'),
                      ),
                      SizedBox(
                        width: 81,
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage('assest/ic_Image.png'),
                      )
                    ]),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Image.asset('assest/ic_fullimg.png'),
                )
              ],
            ),
          ),
          Stack(
            children: [
              Positioned(child: Image.asset("assest/ic_bg3.png")),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 38),
                    child: Container(
                      height: 50,
                      width: 50,
                      child: Center(
                        child: Text(
                          'Habits',
                          style: TextStyle(
                              fontFamily: 'Manrope',
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF573353)),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 80),
                    child: Container(
                      height: 50,
                      width: 220,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 15,
                        itemBuilder: (context, index) => Container(
                          margin: EdgeInsets.only(right: 6),
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 12,
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
                                    color: Color(0xFF573353).withOpacity(0.50)),
                              ),
                              Text(
                                DateTime.now()
                                    .add(Duration(days: index))
                                    .day
                                    .toString(),
                                style: TextStyle(
                                    fontFamily: 'Manrope',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFF573353)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60, left: 20),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  height: 70,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 19, right: 19),
                        child: Container(
                          height: 50,
                          width: 90,
                          child: Center(
                            child: Text(
                              'Read A Book',
                              style: TextStyle(
                                  fontFamily: 'Manrope',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFF573353)),
                            ),
                          ),
                        ),
                      ),
                      Image.asset("assest/ic_vertical.png"),
                      Padding(
                        padding: const EdgeInsets.only(left: 18),
                        child: Container(
                          height: 50,
                          width: 220,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 10,
                            itemBuilder: (context, index1) => ans[index1] ==
                                    true
                                ? Container(
                                    margin: EdgeInsets.only(right: 6),
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        color: Color(0xFFFFF3E9),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Column(
                                      children: [
                                        Align(
                                          child: Container(
                                            margin: EdgeInsets.only(
                                                right: 7, top: 7),
                                            height: 43,
                                            width: 43,
                                            child: Image.asset(
                                              'assest/ic_Square.png',
                                            ),
                                          ),
                                        )
                                      ],
                                    ))
                                : Container(
                                    margin: EdgeInsets.only(right: 6),
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        color: Color(0xFFFC9D45),
                                        borderRadius: BorderRadius.circular(5)),
                                  ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 138, left: 20),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  height: 70,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8, right: 30),
                        child: Container(
                          height: 50,
                          width: 90,
                          child: Center(
                            child: Text(
                              'Exercise',
                              style: TextStyle(
                                  fontFamily: 'Manrope',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFF573353)),
                            ),
                          ),
                        ),
                      ),
                      Image.asset("assest/ic_vertical.png"),
                      Padding(
                        padding: const EdgeInsets.only(left: 18),
                        child: Container(
                          height: 50,
                          width: 220,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 10,
                            itemBuilder: (context, index) => ans[index] == true
                                ? Container(
                                    margin: EdgeInsets.only(right: 6),
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        color: Color(0xFFFFF3E9),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Column(
                                      children: [
                                        Align(
                                          child: Container(
                                            margin: EdgeInsets.only(
                                                right: 7, top: 7),
                                            height: 43,
                                            width: 43,
                                            child: Image.asset(
                                              'assest/ic_Square2.png',
                                            ),
                                          ),
                                        )
                                      ],
                                    ))
                                : Container(
                                    margin: EdgeInsets.only(right: 6),
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        color: Color(0xFFF65B4E),
                                        borderRadius: BorderRadius.circular(5)),
                                  ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 215, left: 20),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  height: 70,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 21, right: 8),
                        child: Container(
                          height: 50,
                          width: 100,
                          child: Center(
                            child: Text(
                              'Wake Up Early',
                              style: TextStyle(
                                  fontFamily: 'Manrope',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFF573353)),
                            ),
                          ),
                        ),
                      ),
                      Image.asset("assest/ic_vertical.png"),
                      Padding(
                        padding: const EdgeInsets.only(left: 18),
                        child: Container(
                          height: 50,
                          width: 220,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 10,
                            itemBuilder: (context, index) => ans[index] == true
                                ? Container(
                                    margin: EdgeInsets.only(right: 6),
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        color: Color(0xFFFFF3E9),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Column(
                                      children: [
                                        Align(
                                          child: Container(
                                            margin: EdgeInsets.only(
                                                right: 0, top: 7),
                                            height: 43,
                                            width: 43,
                                            child: Image.asset(
                                              'assest/ic_Square4.png',
                                            ),
                                          ),
                                        )
                                      ],
                                    ))
                                : Container(
                                    margin: EdgeInsets.only(right: 6),
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        color: Color(0xFF29319F),
                                        borderRadius: BorderRadius.circular(5)),
                                  ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 293, left: 20),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  height: 70,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 9, right: 30),
                        child: Container(
                          height: 50,
                          width: 90,
                          child: Center(
                            child: Text(
                              'Walk Dog',
                              style: TextStyle(
                                  fontFamily: 'Manrope',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFF573353)),
                            ),
                          ),
                        ),
                      ),
                      Image.asset("assest/ic_vertical.png"),
                      Padding(
                        padding: const EdgeInsets.only(left: 18),
                        child: Container(
                          height: 50,
                          width: 220,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 10,
                            itemBuilder: (context, index) => ans[index] == true
                                ? Container(
                                    margin: EdgeInsets.only(right: 6),
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        color: Color(0xFFFFF3E9),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Column(
                                      children: [
                                        Align(
                                          child: Container(
                                            margin: EdgeInsets.only(
                                                right: 0, top: 7),
                                            height: 43,
                                            width: 43,
                                            child: Image.asset(
                                              'assest/ic_Square3.png',
                                            ),
                                          ),
                                        )
                                      ],
                                    ))
                                : Container(
                                    margin: EdgeInsets.only(right: 6),
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        color: Color(0xFF973456),
                                        borderRadius: BorderRadius.circular(5)),
                                  ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
