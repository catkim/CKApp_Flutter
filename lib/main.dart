// ignore_for_file: prefer_const_constructors



import 'package:flutter/material.dart';

import 'mobile/landing-page_mobile.dart';
import 'web/landing-page_web.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LayoutBuilder(
        builder: (context, constraints){
          if(constraints.maxWidth > 800){
            return LandingPageWeb();
          }else{
            return LandingPageMobile(context);
          }
        },
      ),
    );
  }
}

