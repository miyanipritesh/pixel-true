import 'package:flutter/material.dart';
import 'package:loanservicecheck/screen/plashScreen.dart';

import '../Helper/bannerAd.dart';
import '../appConstant.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  int? currentIndex1;
  List bottomNavigationBar = [
    'assest/images/ic_searching.png',
    'assest/images/ic_elearning.png',
    'assest/images/ic_checklist.png',
    'assest/images/ic_news.png',
  ];
  List screens = [
    Center(
      child: Text('1'),
    ),
    Center(
      child: Text('2'),
    ),
    Center(
      child: Text('3'),
    ),
    Center(
      child: Text('4'),
    ),
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              isAdEnable == true ? const AdBannerAd() : const SizedBox.shrink(),
              Expanded(child: screens[currentIndex])
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            currentIndex1 = 0;
            currentIndex = index;
            setState(() {});
          },
          currentIndex: currentIndex,
          unselectedItemColor: Colors.white60,
          selectedItemColor:
              currentIndex1 == 4 ? AppColors.clrWhite60 : AppColors.clrWhite,
          iconSize: 30,
          backgroundColor: AppColors.clrBlack,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          items: bottomNavigationBar.map((element) {
            return BottomNavigationBarItem(
              label: '',
              icon: ImageIcon(
                AssetImage(element),
              ),
            );
          }).toList(),
        ));
  }
}
