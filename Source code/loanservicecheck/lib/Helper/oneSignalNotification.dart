import 'package:onesignal_flutter/onesignal_flutter.dart';

oneSignalNotification(Function onLoad) {
  OneSignal.shared.setLogLevel(OSLogLevel.verbose, OSLogLevel.none);
  OneSignal.shared
      .setAppId("13381d10-7dac-43bf-b6e4-58ee4c990840"); // id put here
  OneSignal.shared.promptUserForPushNotificationPermission().then((accepted) {
    // print("Accepted permission: $accepted");
  });
  OneSignal.shared
      .setNotificationOpenedHandler((OSNotificationOpenedResult result) {
    // print('NOTIFICATION OPENED HANDLER CALLED WITH: ${result}');
    String v =
        "Opened notification: \n${result.notification.jsonRepresentation().replaceAll("\\n", "\n")}";
    onLoad();
  });

  OneSignal.shared.setNotificationWillShowInForegroundHandler(
      (OSNotificationReceivedEvent event) {
    // print('FOREGROUND HANDLER CALLED WITH: ${event}');

    /// Display Notification, send null to not display
    event.complete(null);

    String v =
        "Notification received in foreground notification: \n${event.notification.jsonRepresentation().replaceAll("\\n", "\n")}";
    onLoad();
  });
  OneSignal.shared.setNotificationWillShowInForegroundHandler(
      (OSNotificationReceivedEvent event) {
    // Will be called whenever a notification is received in foreground
    // Display Notification, pass null param for not displaying the notification
    event.complete(event.notification);
  });

  OneSignal.shared
      .setNotificationOpenedHandler((OSNotificationOpenedResult result) {
    // Will be called whenever a notification is opened/button pressed.
  });

  OneSignal.shared.setPermissionObserver((OSPermissionStateChanges changes) {
    // Will be called whenever the permission changes
    // (ie. user taps Allow on the permission prompt in iOS)
  });

  OneSignal.shared
      .setSubscriptionObserver((OSSubscriptionStateChanges changes) {
    // Will be called whenever the subscription changes
    // (ie. user gets registered with OneSignal and gets a user ID)
  });

  OneSignal.shared.setEmailSubscriptionObserver(
      (OSEmailSubscriptionStateChanges emailChanges) {
    // Will be called whenever then user's email subscription changes
    // (ie. OneSignal.setEmail(email) is called and the user gets registered
  });
}
