import 'package:custom_timer/custom_timer.dart';
import 'package:flutter/material.dart';

class SubScriptionScreen extends StatefulWidget {
  const SubScriptionScreen({Key? key}) : super(key: key);

  @override
  State<SubScriptionScreen> createState() => _SubScriptionScreenState();
}

class _SubScriptionScreenState extends State<SubScriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF3E9),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(children: [
              InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset("assest/ic_back.png")),
              const SizedBox(
                width: 85,
              ),
              const Text(
                'Premium',
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
                  color: const Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(12)),
              height: 146,
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 20, left: 20),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            '60% off your upgrade',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                color: Color(0xFFFDA758),
                                fontFamily: 'Manrope'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 130),
                        child: Text(
                          'Expires in',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              letterSpacing: -1,
                              color: const Color(0xFF573353).withOpacity(0.50),
                              fontFamily: 'Manrope-medium'),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),

                      // Timer for subscription

                      Padding(
                        padding: const EdgeInsets.only(right: 25),
                        child: CustomTimer(
                          end: const Duration(),
                          builder: (time) {
                            return Row(
                              children: [
                                Container(
                                  height: 41,
                                  width: 41,
                                  child: const Center(
                                      child: Text(
                                    '${23}',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700),
                                  )),
                                  decoration: BoxDecoration(
                                      color: const Color(0xFF573353)
                                          .withOpacity(0.10),
                                      borderRadius: BorderRadius.circular(12)),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Text(
                                  ':',
                                  style: TextStyle(fontSize: 17),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  height: 41,
                                  width: 41,
                                  child: const Center(
                                      child: Text(
                                    '${16}',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700),
                                  )),
                                  decoration: BoxDecoration(
                                      color: const Color(0xFF573353)
                                          .withOpacity(0.10),
                                      borderRadius: BorderRadius.circular(12)),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Text(
                                  ':',
                                  style: TextStyle(fontSize: 17),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  height: 41,
                                  width: 41,
                                  child: const Center(
                                      child: Text(
                                    '${45}',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700),
                                  )),
                                  decoration: BoxDecoration(
                                      color: const Color(0xFF573353)
                                          .withOpacity(0.10),
                                      borderRadius: BorderRadius.circular(12)),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                              ],
                            );
                          },
                          begin: const Duration(days: 1),
                        ),
                      )
                    ],
                  ),
                  Image.asset(
                    "assest/ic_Teepee.png",
                    width: 120,
                    height: 225,
                    fit: BoxFit.fitHeight,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 188,
              width: 374,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Unlock Monumental Habits',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        letterSpacing: -1,
                        color: Color(0xFF573353),
                        fontFamily: 'Manrope'),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  const Divider(
                    thickness: 1,
                    color: Color(0xFFFFF3E9),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 22,
                        width: 22,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage('assest/ic_currect.png')),
                            color: const Color(0xFFFDA758),
                            borderRadius: BorderRadius.circular(22)),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text(
                        'Unlimited habits',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            letterSpacing: -1,
                            color: Color(0xFF573353),
                            fontFamily: 'Manrope-medium'),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Divider(
                    thickness: 1,
                    color: Color(0xFFFFF3E9),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 22,
                        width: 22,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage('assest/ic_currect.png')),
                            color: const Color(0xFFFDA758),
                            borderRadius: BorderRadius.circular(22)),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text(
                        'Access to all courses',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            letterSpacing: -1,
                            color: Color(0xFF573353),
                            fontFamily: 'Manrope-medium'),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Divider(
                    thickness: 1,
                    color: Color(0xFFFFF3E9),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 22,
                        width: 22,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage('assest/ic_currect.png')),
                            color: const Color(0xFFFDA758),
                            borderRadius: BorderRadius.circular(22)),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text(
                        'Access to all avatar illustrations',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            letterSpacing: -1,
                            color: Color(0xFF573353),
                            fontFamily: 'Manrope-medium'),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 135,
                  width: 119,
                  decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(12)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 13,
                      ),
                      Text(
                        '19.00',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 24,
                            letterSpacing: -1,
                            color: Color(0xFFFDA758),
                            fontFamily: 'Manrope'),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        '6-month plan for \n            39.99 usd',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 10,
                            letterSpacing: -1,
                            color: Color(0xFF573353).withOpacity(0.50),
                            fontFamily: 'Manrope'),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Divider(
                        thickness: 1,
                        color: Color(0xFFFFF3E9),
                      ),
                      Text(
                        'Monthly',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 12,
                            letterSpacing: -1,
                            color: Color(0xFF573353),
                            fontFamily: 'Manrope'),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Container(
                  height: 178,
                  width: 120,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 8),
                        blurRadius: 80,
                        spreadRadius: 0,
                        color: Color(0xFFFBEADB))
                  ]),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 33,
                        decoration: BoxDecoration(
                            color: Color(0xFFFDA758),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12),
                                topRight: Radius.circular(12))),
                        child: Center(
                          child: Text(
                            'Most Popular',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 12,
                                letterSpacing: -1,
                                color: Color(0xFF573353),
                                fontFamily: 'Manrope'),
                          ),
                        ),
                      ),
                      Container(
                        height: 125,
                        width: 119,
                        decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(12),
                              bottomRight: Radius.circular(12),
                            )),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '29.00',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 24,
                                  letterSpacing: -1,
                                  color: Color(0xFFFDA758),
                                  fontFamily: 'Manrope'),
                            ),
                            SizedBox(
                              height: 18,
                            ),
                            Text(
                              '6-month plan for \n            39.99 usd',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 10,
                                  letterSpacing: -1,
                                  color: Color(0xFF573353).withOpacity(0.50),
                                  fontFamily: 'Manrope'),
                            ),
                            Divider(
                              thickness: 1,
                              color: Color(0xFFFFF3E9),
                            ),
                            Text(
                              'Yearly',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12,
                                  letterSpacing: -1,
                                  color: Color(0xFF573353),
                                  fontFamily: 'Manrope'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Stack(
                  children: [
                    Container(
                      height: 135,
                      width: 119,
                      decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.circular(12)),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 13,
                          ),
                          Text(
                            '49.00',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 24,
                                letterSpacing: -1,
                                color: Color(0xFFFDA758),
                                fontFamily: 'Manrope'),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            '6-month plan for \n            39.99 usd',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 10,
                                letterSpacing: -1,
                                color: Color(0xFF573353).withOpacity(0.50),
                                fontFamily: 'Manrope'),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Divider(
                            thickness: 1,
                            color: Color(0xFFFFF3E9),
                          ),
                          Text(
                            'Lifetime',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 12,
                                letterSpacing: -1,
                                color: Color(0xFF573353),
                                fontFamily: 'Manrope'),
                          ),
                        ],
                      ),
                    ),
                    ClipPath(
                      child: Container(
                        height: 40,
                        width: 50,
                        color: const Color(0xFFFDA758),
                      ),
                      clipper: CustomClipPath(),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 55,
              width: 374,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xFFFDA758))),
                onPressed: () {},
                child: Text(
                  'Subscribe Now',
                  style: TextStyle(
                      color: Color(0xFF573353),
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      fontFamily: 'Manrope'),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assest/ic_veryfly.png"),
              SizedBox(
                width: 6,
              ),
              Text(
                'Secured with Goggle Play. Cancel anytime',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: Color(0xFF573353),
                    fontFamily: 'Manrope-medium'),
              ),
            ],
          ),
          SizedBox(
            height: 22,
          ),
          Center(
            child: Text(
              'Restore Purchase',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 12,
                  letterSpacing: -1,
                  color: Color(0xFFFDA758),
                  fontFamily: 'Manrope'),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Restore Purchase',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                    letterSpacing: -1,
                    color: Color(0xFF573353),
                    fontFamily: 'Manrope'),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                'and',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    letterSpacing: -1,
                    color: Color(0xFF573353).withOpacity(0.50),
                    fontFamily: 'Manrope-medium'),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                'Privacy Policy',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                    letterSpacing: -1,
                    color: Color(0xFF573353),
                    fontFamily: 'Manrope'),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(size.width / 2, size.height);
    path.lineTo(10, size.height);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
