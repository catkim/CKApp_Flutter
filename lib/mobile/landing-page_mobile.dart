import 'package:flutter/material.dart';

import '../components.dart';

class LandingPageMobile extends StatefulWidget {
  final title;
  const LandingPageMobile(this.title, {super.key});

  @override
  State<LandingPageMobile> createState() => _LandingPageMobileState();
}

class _LandingPageMobileState extends State<LandingPageMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          children: [
            TabsWeb("Home"),
          ],
        ),
      ),
    );
  }
}

