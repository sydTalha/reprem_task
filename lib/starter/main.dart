import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:reprem_task/views/CardDetail/CardDetail.dart';
import 'package:reprem_task/views/CardMain/CardMain.dart';

void main() {
  runApp(MyApp());
  // runApp(
  //   DevicePreview(
  //     // enabled: !kReleas eMode,
  //     builder: (context) => MyApp(), // Wrap your app
  //   ),
  // );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CardMain(),
    );
  }
}

