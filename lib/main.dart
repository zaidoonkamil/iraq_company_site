import 'package:flutter/material.dart';
import 'package:web_shareka/mobile/constants.dart';
import 'package:web_shareka/mobile/home_screen.dart';

import 'web/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'شركة الخيرات العراقية',
      theme: ThemeData(
        inputDecorationTheme: kDefaultInputDecorationTheme,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LayoutBuilder(
          builder:(context,constranints){
            if(constranints.maxWidth <770 || constranints.maxHeight<466){
              return const HomeScreenMobile();
            }else{
              return const HomeScreen();
            }
          }),
    );
  }
}
