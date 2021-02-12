// import 'dart:async';
// import 'dart:ui';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:flutter/material.dart';
// import 'package:timezone/timezone.dart' as tz;

// import '../main.dart';
// class NotificationPlugin{
// final NotificationAppLaunchDetails notificationAppLaunchDetails;

//   bool get didNotificationLaunchApp =>
//       notificationAppLaunchDetails?.didNotificationLaunchApp ?? false;

//   NotificationPlugin._(this.notificationAppLaunchDetails){
//     init();
//   }
 
//  init(){
//    _requestPermissions();
//     _configureDidReceiveLocalNotificationSubject();
//     _configureSelectNotificationSubject();
//  }



//  void _requestPermissions() {
//     flutterLocalNotificationsPlugin
//         .resolvePlatformSpecificImplementation<
//             IOSFlutterLocalNotificationsPlugin>()
//         ?.requestPermissions(
//           alert: true,
//           badge: true,
//           sound: true,
//         );
//     flutterLocalNotificationsPlugin
//         .resolvePlatformSpecificImplementation<
//             MacOSFlutterLocalNotificationsPlugin>()
//         ?.requestPermissions(
//           alert: true,
//           badge: true,
//           sound: true,
//         );
//   }
//    void _configureDidReceiveLocalNotificationSubject() {
//     didReceiveLocalNotificationSubject.stream
//         .listen((ReceivedNotification receivedNotification) async {
//       await showDialog(
//         context: context,
//         builder: (BuildContext context) => CupertinoAlertDialog(
//           title: receivedNotification.title != null
//               ? Text(receivedNotification.title)
//               : null,
//           content: receivedNotification.body != null
//               ? Text(receivedNotification.body)
//               : null,
//           actions: <Widget>[
//             CupertinoDialogAction(
//               isDefaultAction: true,
//               onPressed: () async {
//                 Navigator.of(context, rootNavigator: true).pop();
//                 await Navigator.push(
//                   context,
//                   MaterialPageRoute<void>(
//                     builder: (BuildContext context) =>
//                         SecondScreen(receivedNotification.payload),
//                   ),
//                 );
//               },
//               child: const Text('Ok'),
//             )
//           ],
//         ),
//       );
//     });
//   }

//   void _configureSelectNotificationSubject() {
//     selectNotificationSubject.stream.listen((String payload) async {
//       await Navigator.push(
//         context,
//         MaterialPageRoute<void>(
//             builder: (BuildContext context) => SecondScreen(payload)),
//       );
//     });
//   }

// }

// class ReceivedNotification {
//   ReceivedNotification({
//     @required this.id,
//     @required this.title,
//     @required this.body,
//     @required this.payload,
//   });

//   final int id;
//   final String title;
//   final String body;
//   final String payload;
// }


// class SecondScreen extends StatefulWidget {
//   const SecondScreen(
//     this.payload, {
//     Key key,
//   }) : super(key: key);

//   final String payload;

//   @override
//   State<StatefulWidget> createState() => SecondScreenState();
// }

// class SecondScreenState extends State<SecondScreen> {
//   String _payload;
//   @override
//   void initState() {
//     super.initState();
//     _payload = widget.payload;
//   }

//   @override
//   Widget build(BuildContext context) => Scaffold(
//         appBar: AppBar(
//           title: Text('Second Screen with payload: ${_payload ?? ''}'),
//         ),
//         body: Center(
//           child: RaisedButton(
//             onPressed: () {
//               Navigator.pop(context);
//             },
//             child: const Text('Go back!'),
//           ),
//         ),
//       );
// }




