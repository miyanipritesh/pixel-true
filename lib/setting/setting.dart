import 'package:flutter/material.dart';
import 'package:pritesh/setting/subscription.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF3E9),
      extendBody: true,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(children: [
              Image.asset("assest/ic_more.png"),
              SizedBox(
                width: 85,
              ),
              Text(
                'Settings',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                    color: Color(0xFF573353),
                    letterSpacing: -1,
                    fontFamily: 'Manrope'),
              ),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(12)),
              height: 146,
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 30),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Check Your Profile',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                color: Color(0xFF573353),
                                fontFamily: 'Manrope'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          'jonathansmith@gmail.com',
                          style: TextStyle(
                              fontWeight: FontWeight.w100,
                              fontSize: 12,
                              letterSpacing: -1,
                              color: Color(0xFF573353).withOpacity(0.50),
                              fontFamily: 'Manrope-medium'),
                        ),
                      ),
                      SizedBox(
                        height: 22,
                      ),
                      Container(
                        height: 40,
                        width: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8)),
                        child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Color(0xFFFDA758))),
                          onPressed: () {},
                          child: Text(
                            'View',
                            style: TextStyle(
                                color: Color(0xFF573353),
                                fontWeight: FontWeight.w700,
                                fontSize: 14,
                                fontFamily: 'Manrope'),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(),
                    child: Image.asset(
                      "assest/ic_posted_img.png",
                      width: 159,
                      height: 175,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 12),
            child: Text(
              'General',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Color(0xFF573353),
                  letterSpacing: -1,
                  fontFamily: 'Manrope-medium'),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: Container(
              height: 74,
              width: 374,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              child: Row(
                children: [
                  SizedBox(
                    width: 8,
                  ),
                  Container(
                    height: 38,
                    width: 38,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assest/ic_notification.png')),
                        color: Color(0xFFFDA758).withOpacity(0.10),
                        borderRadius: BorderRadius.circular(12)),
                  ),
                  SizedBox(
                    width: 14,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Notifications',
                        style: TextStyle(
                            letterSpacing: -1,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            fontFamily: 'Manrope-medium',
                            color: Color(0xFF573353)),
                      ),
                      Text(
                        'Customize notifications',
                        style: TextStyle(
                            letterSpacing: -1,
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            fontFamily: 'Manrope-medium',
                            color: Color(0xFF573353).withOpacity(0.50)),
                      ),
                    ],
                  ),
                  SizedBox(width: 110),
                  Image.asset("assest/ic_forword.png")
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Container(
              height: 74,
              width: 374,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              child: Row(
                children: [
                  SizedBox(
                    width: 8,
                  ),
                  Container(
                    height: 38,
                    width: 38,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assest/ic_more1.png')),
                        color: Color(0xFFFDA758).withOpacity(0.10),
                        borderRadius: BorderRadius.circular(12)),
                  ),
                  SizedBox(
                    width: 14,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'More customization',
                        style: TextStyle(
                            letterSpacing: -1,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            fontFamily: 'Manrope-medium',
                            color: Color(0xFF573353)),
                      ),
                      Text(
                        'Customize it more to fit your usage',
                        style: TextStyle(
                            letterSpacing: -1,
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            fontFamily: 'Manrope-medium',
                            color: Color(0xFF573353).withOpacity(0.50)),
                      ),
                    ],
                  ),
                  SizedBox(width: 50),
                  Image.asset("assest/ic_forword.png")
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 12),
            child: Text(
              'Support',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Color(0xFF573353),
                  letterSpacing: -1,
                  fontFamily: 'Manrope-medium'),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 8),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SubScriptionScreen(),
                    ));
              },
              child: Container(
                height: 50,
                width: 374,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
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
                              image: AssetImage('assest/ic_chat.png')),
                          color: Color(0xFFFDA758).withOpacity(0.10),
                          borderRadius: BorderRadius.circular(12)),
                    ),
                    SizedBox(
                      width: 14,
                    ),
                    Text(
                      'Contact',
                      style: TextStyle(
                          letterSpacing: -1,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Manrope-medium',
                          fontSize: 16,
                          color: Color(0xFF573353)),
                    ),
                    SizedBox(width: 190),
                    Image.asset("assest/ic_forword.png")
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 26,
            ),
            child: Container(
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
                            image: AssetImage('assest/ic_feedback.png')),
                        color: Color(0xFFFDA758).withOpacity(0.10),
                        borderRadius: BorderRadius.circular(12)),
                  ),
                  SizedBox(
                    width: 14,
                  ),
                  Text(
                    'Feedback',
                    style: TextStyle(
                        letterSpacing: -1,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Manrope-medium',
                        fontSize: 16,
                        color: Color(0xFF573353)),
                  ),
                  SizedBox(width: 180),
                  Image.asset("assest/ic_forword.png")
                ],
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 26,
            ),
            child: Container(
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
                            image: AssetImage('assest/ic_security.png')),
                        color: Color(0xFFFDA758).withOpacity(0.10),
                        borderRadius: BorderRadius.circular(12)),
                  ),
                  SizedBox(
                    width: 14,
                  ),
                  Text(
                    'Privacy Policy',
                    style: TextStyle(
                        letterSpacing: -1,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Manrope-medium',
                        fontSize: 16,
                        color: Color(0xFF573353)),
                  ),
                  SizedBox(width: 155),
                  Image.asset("assest/ic_forword.png")
                ],
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 26,
            ),
            child: Container(
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
                            image: AssetImage('assest/ic_about.png')),
                        color: Color(0xFFFDA758).withOpacity(0.10),
                        borderRadius: BorderRadius.circular(12)),
                  ),
                  SizedBox(
                    width: 14,
                  ),
                  Text(
                    'About',
                    style: TextStyle(
                        letterSpacing: -1,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Manrope-medium',
                        fontSize: 16,
                        color: Color(0xFF573353)),
                  ),
                  SizedBox(width: 205),
                  Image.asset("assest/ic_forword.png")
                ],
              ),
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
