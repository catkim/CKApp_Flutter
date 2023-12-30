import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';
import 'routes.dart';
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
      initialRoute: '/',
      onGenerateRoute: (settings) => RouteGenerator.generateRoute(settings),
    );
  }
}

