import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../screen/plashScreen.dart';

Future<NativeAd> buildNativeAd(Function onLoad, {String? factoryId}) async {
  return NativeAd(
      adUnitId: nativeAdId!,
      factoryId: factoryId ?? 'regularNative',
      listener: NativeAdListener(
          onAdLoaded: (Ad ad) {
            print('hii loded    $NativeAd loaded.');
            onLoad();
          },
          onAdFailedToLoad: (Ad ad, LoadAdError error) {
            print('$NativeAd failedToLoad: $error');
            ad.dispose();
          },
          onAdOpened: (Ad ad) => print('$NativeAd onAdOpened.'),
          onAdClosed: (Ad ad) => print('$NativeAd onAdClosed.')),
      request: const AdRequest());
}
