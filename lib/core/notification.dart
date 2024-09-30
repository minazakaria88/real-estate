

import 'dart:convert';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class FirebaseApi
{

  final firebaseMessaging = FirebaseMessaging.instance;
  final androidChannel=const AndroidNotificationChannel(
    'high_importance_channel',
    'High Importance Notifications',
    description: 'This channel is used for important notifications.',
    importance: Importance.high,
  );

//  IOSFlutterLocalNotificationsPlugin ios=IOSFlutterLocalNotificationsPlugin();
  final localNotification=FlutterLocalNotificationsPlugin();
  Future<void> getNotification()async {
    firebaseMessaging.requestPermission();
    // ios.initialize(
    //   const DarwinInitializationSettings(
    //     defaultPresentAlert: true,
    //     defaultPresentBadge: true,
    //     defaultPresentSound: true,
    //   ),
    // );

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      if (message.notification != null) {
        // ios.getActiveNotifications();
        // ios.show(message.notification.hashCode, message.notification!.title, message.notification!.body);
        localNotification.show(
          message.notification.hashCode,
          message.notification!.title,
          message.notification!.body,
          NotificationDetails(
            // iOS: const DarwinNotificationDetails(
            //   presentAlert: true,
            //   presentSound: true,
            //   presentBadge: true,
            // ),
            android: AndroidNotificationDetails(
              androidChannel.id,
              androidChannel.name,
              icon: '@mipmap/ic_launcher',
              playSound: true,
            ),
          ),
          payload: jsonEncode(message.toMap()),
        );

      }
    });

  }
}