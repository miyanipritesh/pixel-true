import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';

//ads
const String _banner_Ad_Android = "ADMOB_BANNER";
const String _interstitial_Ad_Android = "ADMOB_INTERSTITIAL";
const String _native_ad_Android = "ADMOB_NATIVE";
const String _app_open_ad = "_APP_OPEN";
const String _isAdEnable = "IS_AD_ENABLE";
//website_controls
const String _thaiPeople = "THAI_PEOPLE";
const String _foreigner = "FOREIGNER";
const String _webView = "WEBVIEW";
// API LINK
const String _rssFeedUrl = "RSSFEEDURL";

// MapKey
const String _map_Key = "MAP_KEY";

class RemoteConfigService {
  final RemoteConfig _remoteConfig;

  RemoteConfigService({required RemoteConfig remoteConfig})
      : _remoteConfig = remoteConfig;

  final defaults = <String, dynamic>{
    _banner_Ad_Android: "ca-app-pub-3940256099942544/6300978111",
    _interstitial_Ad_Android: "ca-app-pub-3940256099942544/1033173712",
    _native_ad_Android: "ca-app-pub-3940256099942544/2247696110",
    _app_open_ad: "ca-app-pub-3940256099942544/3419835294",
    _thaiPeople: 'https://pub.dev/',
    _foreigner: 'https://pub.dev/',
    _webView: 'https://pub.dev/',
    _rssFeedUrl: 'http://www.dlt.go.th/th/public-news/rss.xml',
    _isAdEnable: true,
    _map_Key: 'AIzaSyB8RHKpZOqXhTgLOqzpsePMzlrpXRc_hsE',
  };

  static RemoteConfigService? _instance;
  static Future<RemoteConfigService?> getInstance() async {
    await Firebase.initializeApp();
    _instance = RemoteConfigService(
      // ignore: await_only_futures
      remoteConfig: await RemoteConfig.instance,
    );
    return _instance;
  }

  String get getBannerAdsId => _remoteConfig.getString(_banner_Ad_Android);
  String get getInterstitialAdId =>
      _remoteConfig.getString(_interstitial_Ad_Android);
  String get getNativeAdId => _remoteConfig.getString(_native_ad_Android);
  String get getThaiPeople => _remoteConfig.getString(_thaiPeople);
  String get getWebView => _remoteConfig.getString(_webView);
  String get getForeigner => _remoteConfig.getString(_foreigner);
  String get getAppOpenId => _remoteConfig.getString(_app_open_ad);
  String get getRssFeedUrl => _remoteConfig.getString(_rssFeedUrl);
  String get getMapKey => _remoteConfig.getString(_map_Key);
  bool get getAdIsEnable => _remoteConfig.getBool(_isAdEnable);

  Future initialize() async {
    try {
      await _remoteConfig.setDefaults(defaults);
      await _fetchAndActive();
    } catch (e) {}
  }

  Future _fetchAndActive() async {
    await _remoteConfig.fetch();
    await _remoteConfig.setConfigSettings(RemoteConfigSettings(
        fetchTimeout: const Duration(seconds: 0),
        minimumFetchInterval: const Duration(milliseconds: 500)));
    await _remoteConfig.fetchAndActivate();
  }
}
