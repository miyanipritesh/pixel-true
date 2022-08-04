import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Helper/intertitialAd.dart';
import '../appConstant.dart';
import '../remote_config_service.dart';
import 'InstructionScreen.dart';

String? bannerId;
String? appOpenId;
String? nativeAdId;
String? interstitialAdId;
String? mapKey;
bool? isAdEnable;
String? rssFeedUrl;
String? foreigner;
String? thaiPeople;

class PlashScreen extends StatefulWidget {
  const PlashScreen({Key? key}) : super(key: key);

  @override
  State<PlashScreen> createState() => _PlashScreenState();
}

class _PlashScreenState extends State<PlashScreen> {
  final AdShowHelper _adShowHelper = AdShowHelper();
  RemoteConfigService? _remoteConfigService;

  getSharepreData() async {
    if (mounted) {
      final prefs = await SharedPreferences.getInstance();
      isAdEnable = prefs.getBool('adIsEnable');
      interstitialAdId = prefs.getString('interstitialAd');
      bannerId = prefs.getString('BannerAdsUnitID');
      nativeAdId = prefs.getString('nativeAd');
      appOpenId = prefs.getString('appOpedId');
      rssFeedUrl = prefs.getString('rssFeedUrl');
      thaiPeople = prefs.getString('ThaiPeople');
      foreigner = prefs.getString('foreigner');
      mapKey = prefs.getString('mapKey');
    }
  }

  initializeRemoteConfigAndAds() async {
    _remoteConfigService = await RemoteConfigService.getInstance();
    await _remoteConfigService?.initialize().whenComplete(() async {
      if (mounted) {
        final prefs = await SharedPreferences.getInstance();
        await prefs.setBool('adIsEnable', _remoteConfigService!.getAdIsEnable);
        await prefs.setString(
            'BannerAdsUnitID', _remoteConfigService!.getBannerAdsId);
        await prefs.setString(
            'interstitialAd', _remoteConfigService!.getInterstitialAdId);
        await prefs.setString(
            'ThaiPeople', _remoteConfigService!.getThaiPeople);
        await prefs.setString('foreigner', _remoteConfigService!.getForeigner);
        await prefs.setString('WebView', _remoteConfigService!.getWebView);
        await prefs.setString('nativeAd', _remoteConfigService!.getNativeAdId);
        await prefs.setString('appOpedId', _remoteConfigService!.getAppOpenId);
        await prefs.setString(
            'rssFeedUrl', _remoteConfigService!.getRssFeedUrl);
        await prefs.setString('mapKey', _remoteConfigService!.getMapKey);
      }
      await getSharepreData();
      isAdEnable == true ? _adShowHelper.createInterstitialAd() : null;
    });
  }

  timeFunction() {
    Timer(const Duration(seconds: 4), () {
      isAdEnable == true ? _adShowHelper.showInterstitialAd() : null;
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => InstructionScreen(),
          ));
    });
  }

  void connectivityCheck() async {
    var connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi ||
        connectivityResult == ConnectivityResult.ethernet) {
      await initializeRemoteConfigAndAds();
      timeFunction();
    } else {
      Get.dialog(UnconstrainedBox(
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Center(
                child: Icon(
                  Icons.signal_wifi_connected_no_internet_4_rounded,
                  size: 50,
                ),
              ),
              const Center(
                child: Text(
                  'No Internet Connection!',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.none),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Get.back();
                  Timer(
                    const Duration(milliseconds: 500),
                    () => connectivityCheck(),
                  );
                },
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.clrBlack),
                    child: Text(
                      'Retry',
                      style: TextStyle(
                          fontSize: 16,
                          color: AppColors.clrWhite,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.none),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ));
    }
  }

  @override
  void initState() {
    super.initState();
    connectivityCheck();
    _adShowHelper.createInterstitialAd();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Lottie.asset('assest/lottie/ic_plashlotti.json')),
    );
  }
}
