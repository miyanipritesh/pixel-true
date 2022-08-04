import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:loanservicecheck/screen/plashScreen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../Helper/bannerAd.dart';
import '../Helper/intertitialAd.dart';
import '../appConstant.dart';
import 'InstructionScreen.dart';
import 'homeScreen.dart';

enum Availability { loading, available, unavailable }

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({Key? key}) : super(key: key);

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  final AdShowHelper _adShowHelper = AdShowHelper();
  final InAppReview _inAppReview = InAppReview.instance;
  String _appStoreId = '';
  String _microsoftStoreId = '';

  Availability availability = Availability.loading;
  //todo:_createAds

  @override
  void initState() {
    super.initState();
    // _createAds();
    _adShowHelper.createInterstitialAd();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      try {
        final isAvailable = await _inAppReview.isAvailable();
        setState(() {
          availability = isAvailable && !Platform.isAndroid
              ? Availability.available
              : Availability.unavailable;
        });
      } catch (e) {
        setState(() => availability = Availability.unavailable);
      }
    });
  }

  void _setAppStoreId(String id) => _appStoreId = id;

  void _setMicrosoftStoreId(String id) => _microsoftStoreId = id;

  Future<void> _requestReview() => _inAppReview.requestReview();

  Future<void> _openStoreListing() => _inAppReview.openStoreListing(
        appStoreId: _appStoreId,
        microsoftStoreId: _microsoftStoreId,
      );
  @override
  void dispose() {
    super.dispose();
    nativeAd2?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            (isAdEnable == true) ? const AdBannerAd() : const SizedBox.shrink(),
            SizedBox(
              height: 6.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Text(
                'The app provide loan service check for you, and this app give best experience, so share your experience to use over app',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: AppColors.clrBlack,
                    fontSize: 17.sp),
              ),
            ),
            SizedBox(
              height: 6.h,
            ),
            (nativeAd2 != null && nativeAdIsLoaded)
                ? SizedBox(
                    height: MediaQuery.of(context).size.height * 0.33,
                    width: MediaQuery.of(context).size.width * 0.70,
                    child: AdWidget(ad: nativeAd2!),
                  )
                : const SizedBox.shrink(),
            SizedBox(
              height: 2.h,
            ),
            UnconstrainedBox(
              child: SizedBox(
                height: 5.h,
                width: 65.w,
                child: ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                        elevation: MaterialStateProperty.all(0),
                        backgroundColor:
                            MaterialStateProperty.all(AppColors.clrBlack)),
                    onPressed: () {
                      _openStoreListing();
                      _requestReview();
                    },
                    child: Text(
                      AppString.strReview,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: AppColors.clrWhite,
                          fontSize: 18.sp),
                    )),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            UnconstrainedBox(
              child: SizedBox(
                height: 5.h,
                width: 65.w,
                child: ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                        elevation: MaterialStateProperty.all(0),
                        backgroundColor:
                            MaterialStateProperty.all(AppColors.clrBlack)),
                    onPressed: () {
                      if (isAdEnable == true) {
                        _adShowHelper.showInterstitialAd();
                      }

                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ));
                    },
                    child: Text(
                      AppString.strStart,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: AppColors.clrWhite,
                          fontSize: 18.sp),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
