import 'package:flutter/material.dart';
import 'package:pritesh/Signup%20and%20Login%20Screen/login.dart';

class OnbordingPage1 extends StatefulWidget {
  const OnbordingPage1({Key? key}) : super(key: key);

  @override
  State<OnbordingPage1> createState() => _OnbordingPage1State();
}

class _OnbordingPage1State extends State<OnbordingPage1> {
  int currentindex = 0;
  PageController _controller = PageController();

  List title = [
    'WELCOME TO',
    'CREATE NEW ',
    'KEEP TRACK OF YOUR',
    'JOIN A SUPPORTIVE'
  ];
  List title1 = [
    'MONUMENTAL HABITS',
    'HABIT EASILY',
    ' PROGRESS',
    ' COMMUNITY'
  ];
  List img = [
    'assest/1.png',
    'assest/2.png',
    'assest/4.png',
    'assest/5.png',
  ];
  List btitle = [
    'WE CAN HELP YOU TO BE A BETTER ',
    'WE CAN HELP YOU TO BE A BETTER ',
    'WE CAN HELP YOU TO BE A BETTER ',
    'WE CAN HELP YOU TO BE A BETTER',
  ];
  List btitle1 = [
    'VERSION OF YOURSELF.',
    'VERSION OF YOURSELF.',
    'VERSION OF YOURSELF.',
    'VERSION OF YOURSELF.',
  ];
  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: Column(
        children: [
          Flexible(
            flex: 5,
            child: PageView(
              controller: _controller,
              onPageChanged: (index) {
                setState(() {
                  currentindex = index;
                });
              },
              children: List.generate(
                  title.length,
                  (index) => Column(
                        children: [
                          SizedBox(
                            height: 80,
                          ),
                          Center(
                            child: Text(
                              title[index],
                              style: TextStyle(
                                  letterSpacing: -3,
                                  color: Color(0xFF573353),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 32,
                                  fontFamily: 'Klasik'),
                            ),
                          ),
                          Center(
                            child: Text(
                              title1[index],
                              style: TextStyle(
                                  letterSpacing: -3,
                                  color: Color(0xFF573353),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 32,
                                  fontFamily: 'Klasik'),
                            ),
                          ),
                          SizedBox(
                            height: 42,
                          ),
                          Image.asset(
                            img[index],
                            height: 408,
                            width: 414,
                          ),
                          Image.asset('assest/ic_bg1.png')
                        ],
                      )),
            ),
          ),
          SizedBox(
            height: currentindex == title.length - 1 ? 0 : 45,
          ),
          Flexible(
            flex: 1,
            child: currentindex == title.length - 1
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: 55,
                      width: 374,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Color(0xFFFDA758))),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginScreen(),
                              ));
                        },
                        child: Text(
                          'Get Started',
                          style: TextStyle(
                              color: Color(0xFF573353),
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              fontFamily: 'Manrope'),
                        ),
                      ),
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Container(
                      height: 24,
                      width: 350,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _controller.jumpToPage(4);
                              });
                            },
                            child: Text(
                              'Skip',
                              style: TextStyle(
                                  color: Color(0xFF573353),
                                  fontFamily: 'Manrope',
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Row(
                            children: List.generate(
                                title.length,
                                (index) => Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: currentindex == index
                                                  ? Color(0xFFE5E5E5)
                                                  : Color(0xFFFFFFFF)),
                                          color: currentindex == index
                                              ? Color(0xFF573353)
                                              : Color(0xFFF9B566),
                                          borderRadius:
                                              BorderRadius.circular(13)),
                                      margin: EdgeInsets.only(right: 9),
                                      height: currentindex == index ? 13 : 11,
                                      width: currentindex == index ? 13 : 11,
                                    )),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _controller.nextPage(
                                    duration: Duration(microseconds: 900),
                                    curve: Curves.easeIn);
                              });
                            },
                            child: Text(
                              'Next',
                              style: TextStyle(
                                  color: Color(0xFF573353),
                                  fontFamily: 'Manrope',
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
          )
        ],
      ),
    );
  }
}

class Introduction {
  String img;
  String title;
  String botom;
  Introduction({required this.img, required this.title, required this.botom});
}
