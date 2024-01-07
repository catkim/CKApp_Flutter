import 'package:flutter/material.dart';

import '../components.dart';

class WorksMobile extends StatefulWidget {
  const WorksMobile({super.key});

  @override
  State<WorksMobile> createState() => _WorksMobileState();
}

class _WorksMobileState extends State<WorksMobile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
    extendBodyBehindAppBar: true,
    endDrawer: DrawersWeb(),
    backgroundColor: Colors.white,
    body: NestedScrollView(
    headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
    return <Widget>[
    SliverAppBar(
    expandedHeight: 200.0,
    backgroundColor: Colors.white,
    iconTheme: IconThemeData(size: 35.0, color: Colors.black),
    flexibleSpace: FlexibleSpaceBar(
    background: Image.asset(
    "assets/works.jpg",
    fit: BoxFit.cover,
    filterQuality: FilterQuality.high,
    ),
    ),
    title: TabsWebList(),
    )
    ];
    }, body: ListView(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children:[
            SizedBox(height:20.0),
            SansBold("Works", 35.0),
            SizedBox(height: 20.0),
            AnimatedCard(imagePath: "assets/appScreen.jpg",
            fit: BoxFit.contain,
             height:150.0,
             width: 300.0,
            ),
            SizedBox(height:30.0),
            SansBold("Portfolio", 20.0),
            SizedBox(height:10.0),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Sans("Placeholder text goes here", 15.0),
            ),
          ],
        ),
      ],
    ),
    ),
    ),);
  }
}
