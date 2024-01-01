
import 'package:flutter/material.dart';
import '../components.dart';

class AboutMobile extends StatefulWidget {
  const AboutMobile({super.key});

  @override
  State<AboutMobile> createState() => _AboutMobileState();
}

class _AboutMobileState extends State<AboutMobile> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Scaffold(
          extendBodyBehindAppBar: true,
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            iconTheme: IconThemeData(size: 35.0, color: Colors.black),
          ),
          endDrawer: DrawersMobile(),
          body: Padding(
            padding:const EdgeInsets.symmetric(horizontal: 20.0),
            child: ListView(
              children: [
                // into first section
                CircleAvatar(
                  radius: 117,
                  backgroundColor: Colors.tealAccent,
                  child:CircleAvatar(
                    radius: 113.0,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      radius: 110.0,
                      backgroundColor: Colors.white,
                      child: Image.asset('assets/Imefall2023cropped.jpg', filterQuality: FilterQuality.high,)
                    ),
                  ),
                ),
                SizedBox(height:20.0),
                //first section
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SansBold("About me", 35.0),
                      SizedBox(height:10.0),
                      Sans(
                          "Senior Digital Analytics Architect delivering quality data collection implementations.",
                          15.0),
                      Sans(
                          "Proficient in Adobe Launch, Tealium, and Ensighten tag managers ",
                          15.0),
                      SizedBox(height: 15.0),
                      Wrap(
                        spacing: 7.0,
                        runSpacing: 7.0,
                        children: [
                          tealContainer("Javascript"),
                          tealContainer("Launch"),
                          tealContainer("Adobe Analytics"),
                          tealContainer("Tealium"),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height:40.0),
                // second section
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AnimatedCard(imagePath: "assets/webL.png",
                        width:200.0
                    ),
                    SizedBox(height:30.0),
                    SansBold('Implementation Engineer', 25.0),
                    SizedBox(height:10.0),
                    Sans("Building solid data collection", 20.0)
                  ],
                ),
                // third section
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 20.0,),
                    AnimatedCard(imagePath: 'assets/app.png',
                    width: 200.0,
                      reverse: true,
                    ),
                    SizedBox(height:30.0),
                    SansBold("Data Collection Architect", 20.0 ),
                    SizedBox(height:10.0),
                    Sans("High quality data collection", 20.0)
                  ],
                ),
              ],
            ),
          ),
        ),);

  }
}
