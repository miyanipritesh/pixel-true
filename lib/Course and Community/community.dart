import 'package:flutter/material.dart';

class CommunityScreen extends StatefulWidget {
  const CommunityScreen({Key? key}) : super(key: key);

  @override
  State<CommunityScreen> createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {
  bool current = false;

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
                    Image.asset("assest/ic_more.png"),
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
              itemCount: 4,
              itemBuilder: (context, index) => Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
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
                            Image.asset("assest/ic_photo1.png"),
                            Padding(
                              padding: const EdgeInsets.only(right: 200),
                              child: Column(
                                children: [
                                  Text(
                                    'Jerome',
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
                            Image.asset("assest/ic_sharepost.png"),
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
                          'Man, youre my new guru! Viewing the lessons for a second time. Thoroughly pleased. And impressed that you draw from scientific literature in telling memorable...',
                          style: TextStyle(
                              color: Color(0xFF573353),
                              fontSize: 14,
                              fontWeight: FontWeight.w100,
                              fontFamily: 'Manrope'),
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
