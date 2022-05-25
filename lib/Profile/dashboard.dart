import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  String? newvalue;

  var item = [
    'Popular',
    'Popular 1',
    'Popular 2',
    'Popular 3',
    'Popular 4',
    'Popular 5',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF3E9),
      extendBody: true,
      body: Column(
        children: [
          SizedBox(
            height: 39,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assest/ic_back.png"),
                  Center(
                    child: Text(
                      'Profile',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: Color(0xFF573353),
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
          SizedBox(
            height: 42,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              height: 259,
              width: 374,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              child: Column(
                children: [
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 16,
                      ),
                      Image.asset('assest/ic_profile.png'),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Text(
                            'Marilyn Aminoff',
                            style: TextStyle(
                                fontFamily: 'Manrope',
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: Color(0xFF573353)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 85),
                            child: Text(
                              'Name',
                              style: TextStyle(
                                  fontFamily: 'Manrope',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: Color(0xFF573353).withOpacity(0.50)),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 48,
                      ),
                      Container(
                        height: 33,
                        width: 110,
                        decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF),
                            border: Border.all(
                                color: Color.fromRGBO(87, 51, 83, 0.1)),
                            borderRadius: BorderRadius.circular(12)),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            icon: Center(
                                child: ImageIcon(
                                    AssetImage('assest/ic_down arror.png'))),
                            items: item
                                .map((e) => DropdownMenuItem(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15),
                                        child: Text(
                                          e,
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontFamily: 'Manrope',
                                              fontWeight: FontWeight.w100,
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
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Divider(
                    thickness: 1,
                    color: Color(0xFFFFF3E9),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 12,
                      ),
                      Column(
                        children: [
                          Text(
                            'Total Work Hours',
                            style: TextStyle(
                                fontFamily: 'Manrope',
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                color: Color(0xFF573353).withOpacity(0.50)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 75),
                            child: Text(
                              '18',
                              style: TextStyle(
                                  fontFamily: 'Klasik',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 24,
                                  color: Color(0xFF573353)),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Color(0xFFFDA758).withOpacity(0.10),
                        ),
                        child: Image.asset("assest/ic_watch.png"),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Image.asset("assest/ic_vertical.png"),
                      SizedBox(
                        width: 12,
                      ),
                      Column(
                        children: [
                          Text(
                            'Task Completed',
                            style: TextStyle(
                                fontFamily: 'Manrope',
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                color: Color(0xFF573353).withOpacity(0.50)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 75),
                            child: Text(
                              '12',
                              style: TextStyle(
                                  fontFamily: 'Klasik',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 24,
                                  color: Color(0xFF573353)),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Color(0xFF29319F).withOpacity(0.10),
                        ),
                        child: Image.asset("assest/ic_flag.png"),
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 1,
                    color: Color(0xFFFFF3E9),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            height: 50,
            width: 374,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(12)),
            child: Row(
              children: [
                SizedBox(
                  width: 6,
                ),
                Container(
                  height: 38,
                  width: 38,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assest/ic_payment.png')),
                      color: Color(0xFFFDA758).withOpacity(0.10),
                      borderRadius: BorderRadius.circular(12)),
                ),
                SizedBox(
                  width: 14,
                ),
                Text(
                  'Billing methods',
                  style: TextStyle(
                      letterSpacing: -1,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Color(0xFF573353)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            height: 50,
            width: 374,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(12)),
            child: Row(
              children: [
                SizedBox(
                  width: 6,
                ),
                Container(
                  height: 38,
                  width: 38,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assest/ic_medal.png')),
                      color: Color(0xFFFDA758).withOpacity(0.10),
                      borderRadius: BorderRadius.circular(12)),
                ),
                SizedBox(
                  width: 14,
                ),
                Text(
                  'Longest Streak',
                  style: TextStyle(
                      letterSpacing: -1,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Color(0xFF573353)),
                ),
                SizedBox(width: 115),
                Text(
                  '20 Days',
                  style: TextStyle(
                      letterSpacing: -1,
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Color(0xFF573353)),
                ),
                SizedBox(width: 10),
                Image.asset("assest/ic_forword.png")
              ],
            ),
          ),
        ],
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
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(18.0),
        child: FloatingActionButton(
            backgroundColor: const Color(0xFFFC9D45),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(64)),
            onPressed: () {},
            child: const Icon(
              Icons.add,
              color: Color(0xFF573353),
            )),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
    );
  }
}
