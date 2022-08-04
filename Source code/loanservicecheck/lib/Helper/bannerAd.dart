import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../screen/plashScreen.dart';

class AdBannerAd extends StatefulWidget {
  const AdBannerAd({Key? key}) : super(key: key);

  @override
  State<AdBannerAd> createState() => _AdBannerAdState();
}

class _AdBannerAdState extends State<AdBannerAd> {
  Orientation? _currentOrientation;
  bool? bannerEnable;
  bool isLoaded1 = false;
  BannerAd? anchoredAdaptiveAd;
  Future<void> _loadAd() async {
    await anchoredAdaptiveAd?.dispose();
    setState(() {
      anchoredAdaptiveAd = null;
      isLoaded1 = false;
    });

    final AnchoredAdaptiveBannerAdSize? size =
        await AdSize.getCurrentOrientationAnchoredAdaptiveBannerAdSize(
            MediaQuery.of(context).size.width.truncate());
    if (size == null) {
      return;
    }

    anchoredAdaptiveAd = BannerAd(
      adUnitId: Platform.isAndroid
          ? bannerId!
          : 'ca-app-pub-3940256099942544/2934735716',
      size: size,
      request: const AdRequest(),
      listener: BannerAdListener(
        onAdLoaded: (Ad ad) {
          print('$ad loaded: ${ad.responseInfo}');
          setState(() {
            anchoredAdaptiveAd = ad as BannerAd;
            isLoaded1 = true;
          });
        },
        onAdFailedToLoad: (Ad ad, LoadAdError error) {
          ad.dispose();
        },
      ),
    );
    return anchoredAdaptiveAd!.load();
  }

  Widget getAdWidget() {
    return OrientationBuilder(
      builder: (context, orientation) {
        if (_currentOrientation == orientation &&
            anchoredAdaptiveAd != null &&
            isLoaded1) {
          return SizedBox(
            width: anchoredAdaptiveAd!.size.width.toDouble(),
            height: anchoredAdaptiveAd!.size.height.toDouble(),
            child: AdWidget(ad: anchoredAdaptiveAd!),
          );
        }
        // Reload the ad if the orientation changes.
        if (_currentOrientation != orientation) {
          _currentOrientation = orientation;
          _loadAd();
        }
        return Container();
      },
    );
  }

  @override
  void initState() {
    _loadAd();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    anchoredAdaptiveAd?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return getAdWidget();
  }
}
