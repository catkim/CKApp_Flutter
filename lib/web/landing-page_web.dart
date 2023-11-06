
import 'package:flutter/material.dart';

import '../components.dart';
class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({super.key});

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(
          size:25.0,
          color: Colors.black,
        ),
        title: Row(
          children: [
            TabsWeb("Home"),
          ],
        ),
      ),
    );
  }
}



