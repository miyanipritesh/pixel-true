import 'package:flutter/material.dart';

import '../home/home.dart';
import '../home/new_habits.dart';

class CommunityScreen extends StatefulWidget {
  const CommunityScreen({Key? key}) : super(key: key);

  @override
  State<CommunityScreen> createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {
  bool current = false;
  List community = [
    Community(
        img: 'assest/ic_photo1.png',
        name: 'Jerome',
        dec:
            'Man, youre my new guru! Viewing the lessons for a second time. Thoroughly pleased. And impressed that you draw from scientific literature in telling memorable...'),
    Community(
        img: 'assest/ic_photo2.png',
        name: 'Gretchen',
        dec:
            'I loved the course! I ve been trying to break all this great stuff down into manageable chunks to help my clients develop healthy habits and achieve their personal... '),
    Community(
        img: 'assest/ic_photo3.png',
        name: 'Al',
        dec:
            'This course contains the most complete material on habit formation that I ve seen. There is just enough theory to explain the principles, and not so much...'),
    Community(
        img: 'assest/ic_photo4.png',
        name: 'Colin',
        dec:
            'James Clear s Habit s Academy course has tremendously changed my life for the better! Having been a self improvement aficionado for decades...'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF3E9),
      extendBody: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 39,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Image.asset("assest/ic_more.png")),
                    Center(
                      child: Text(
                        'Community',
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
                      child: Image.asset("assest/ic_profile.png"),
                    ),
                  ]),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: community.length,
              itemBuilder: (context, index) => Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 3),
                child: Container(
                  height: 164,
                  width: 374,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  child: Column(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 16, right: 16, top: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(community[index].img),
                            Padding(
                              padding: const EdgeInsets.only(right: 200),
                              child: Column(
                                children: [
                                  Text(
                                    community[index].name,
                                    style: TextStyle(
                                        color: Color(0xFF573353),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'Manrope'),
                                  ),
                                  Text(
                                    "41m ago",
                                    style: TextStyle(
                                        color:
                                            Color(0xFF573353).withOpacity(0.50),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Manrope'),
                                  )
                                ],
                              ),
                            ),
                            InkWell(
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (context) => AlertDialog(
                                            content: Text('Under devlepment'),
                                          ));
                                },
                                child: Image.asset("assest/ic_sharepost.png")),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: Color(0xFFFFF3E9),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16, right: 21),
                        child: Text(
                          community[index].dec,
                          style: TextStyle(
                              color: Color(0xFF573353),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Manrope-medium'),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                InkWell(
                                  child: Image.asset(
                                    'assest/ic_heart.png',
                                    color: current == false
                                        ? Color(0xFFFDA758)
                                        : Color(0xFFEBDCCF),
                                  ),
                                  onFocusChange: (value) {
                                    setState(() {
                                      current = value;
                                    });
                                  },
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  '21.6k',
                                  style: TextStyle(
                                      color: Color(0xFF573353),
                                      fontSize: 8,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Manrope'),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Container(
                            child: Row(
                              children: [
                                Image.asset('assest/ic_msg.png'),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  '21.6k',
                                  style: TextStyle(
                                      color:
                                          Color(0xFF573353).withOpacity(0.50),
                                      fontSize: 8,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Manrope'),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                        ],
                      )
                    ],
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

class Community {
  String img;
  String name;

  String dec;

  Community({required this.img, required this.name, required this.dec});
}
