import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:loanservicecheck/screen/plashScreen.dart';
import 'package:loanservicecheck/screen/reviewScreen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../Helper/appOpenAd.dart';
import '../Helper/bannerAd.dart';
import '../Helper/nativeAd.dart';
import '../appConstant.dart';

NativeAd? nativeAd2;
bool nativeAdIsLoaded = false;

class InstructionScreen extends StatefulWidget {
  const InstructionScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<InstructionScreen> createState() => _InstructionScreenState();
}

class _InstructionScreenState extends State<InstructionScreen> {
  late AppLifecycleReactor _appLifecycleReactor;
  final PageController _pageController = PageController();
  static const METHOD_CHANNEL = MethodChannel('com.map_api_key.flutter');
  int currentPage = 0;
  List<String> instructionImg = [
    'assest/images/ic_1.png',
    'assest/images/ic_2.png',
    'assest/images/ic_3.png',
    'assest/images/ic_4.png',
    'assest/images/ic_5.png',
  ];

  List<String> discribePage = [
    'personal information',
    'registration conditions',
    'Register And Loging',
    'Select the desired office ',
    'Choose a service type',
  ];

  appOpenShow() async {
    AppOpenAdManager appOpenAdManager = AppOpenAdManager()..loadAd();
    _appLifecycleReactor =
        AppLifecycleReactor(appOpenAdManager: appOpenAdManager);
    _appLifecycleReactor.listenToAppStateChanges();
  }

  Future<void> _createAds() async {
    if (isAdEnable == true) {
      nativeAd2 = await buildNativeAd(() {
        setState(() {
          nativeAdIsLoaded = true;
        });
      }, factoryId: "regularNative")
        ..load();
    }
  }

  Future<void> _setGoogleMapApiKey(String mapKey) async {
    Map<String, dynamic> requestData = {"mapKey": mapKey};
    METHOD_CHANNEL
        .invokeMethod('setGoogleMapKey', requestData)
        .then((value) {});
  }

  @override
  void initState() {
    super.initState();
    isAdEnable == true ? appOpenShow() : null;
    _createAds();
    _setGoogleMapApiKey(mapKey!);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.clrWhite,
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
              flex: 0,
              child: isAdEnable == true
                  ? const AdBannerAd()
                  : const SizedBox.shrink()),
          SizedBox(
            height: 3.h,
          ),
          Row(
            mainAxisAlignment: currentPage == 14
                ? MainAxisAlignment.end
                : MainAxisAlignment.spaceBetween,
            children: [
              currentPage == 14
                  ? const SizedBox()
                  : Padding(
                      padding: EdgeInsets.only(left: 2.h),
                      child: UnconstrainedBox(
                        child: SizedBox(
                          height: 5.h,
                          width: 30.w,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8))),
                                  elevation: MaterialStateProperty.all(0),
                                  backgroundColor: MaterialStateProperty.all(
                                      AppColors.clrBlack)),
                              onPressed: () {
                                _pageController
                                    .jumpToPage(instructionImg.length);
                              },
                              child: Text(
                                AppString.strSkip,
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.clrWhite,
                                    fontSize: 16.sp),
                              )),
                        ),
                      ),
                    ),
              Padding(
                padding: currentPage == 14
                    ? EdgeInsets.only(right: 5.w)
                    : EdgeInsets.only(right: 2.h),
                child: SizedBox(
                  height: 5.h,
                  width: 30.w,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8))),
                          elevation: MaterialStateProperty.all(0),
                          backgroundColor:
                              MaterialStateProperty.all(AppColors.clrBlack)),
                      onPressed: () {
                        _pageController.nextPage(
                            duration: const Duration(seconds: 1),
                            curve: Curves.ease);

                        if (currentPage == 4) {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ReviewScreen(),
                              ));
                        }
                      },
                      child: Text(
                        currentPage == 14
                            ? AppString.strDone
                            : AppString.strNext,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: AppColors.clrWhite,
                            fontSize: 16.sp),
                      )),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 3.h,
          ),
          Expanded(
              flex: 6,
              child: PageView.builder(
                allowImplicitScrolling: true,
                padEnds: true,
                onPageChanged: (value) {
                  currentPage = value;
                  setState(() {});
                },
                controller: _pageController,
                itemCount: instructionImg.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          discribePage[index],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 17.sp, fontWeight: FontWeight.w600),
                        ),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      SizedBox(
                          height: 57.h,
                          child: Image.asset(
                            instructionImg[index],
                            fit: BoxFit.fill,
                          )),
                    ],
                  );
                },
              )),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.07,
            child: Center(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      instructionImg.length,
                      (index) => Container(
                        margin: const EdgeInsets.only(right: 5),
                        height: currentPage == index ? 15 : 10,
                        width: currentPage == index ? 15 : 10,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: currentPage == index
                                ? AppColors.clrBlack
                                : Colors.black12),
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   height: 5.h,
                  // ),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
