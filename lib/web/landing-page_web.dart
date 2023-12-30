
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
    var heightDevice=MediaQuery.of(context).size.height;
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
        title: TabsWebList(),
      ),
      body: ListView(
        children: [
          //First page
          Container(
          height: heightDevice-56,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.tealAccent,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0),
                          ),
                    ),
                      padding: EdgeInsets.symmetric(vertical:10.0, horizontal: 20.0),
                      child: SansBold("Hello I'm", 15.0),
                  ),
                  SizedBox(height:15.0),
                  SansBold("Catherine Kim", 55.0),
                  Sans("Senior Digital Analytics Architect", 30),
                  SizedBox(height: 15.0),
                  Row(
                    children: [
                      Icon(Icons.email),
                      SizedBox(width:20.0),
                      Sans("cat.kim.fed@gmail.com", 15.0)
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.location_city),
                      SizedBox(width:20.0),
                      Sans("Los Angeles", 15.0)
                    ],
                  ),
                ]
              ),
              CircleAvatar(
                radius: 147.0,
                backgroundColor: Colors.tealAccent,
                child: CircleAvatar(
                  radius:143.0,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    radius:140.00,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('assets/me2023cropped.jpg'),
                  ),
                ),
              ),
            ],
          ),
        ),
          // second page
          Container(
            height: heightDevice/1.5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/web.jpg', height:heightDevice/1.7),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    SansBold("About Me", 40.0),
                SizedBox(height:15),
                    Sans("Senior Digital Analytics Architect delivering quality data collection implementations.", 15),
                    Sans("Proficient in Adobe Launch, Tealium, and Ensighten tag managers", 15),
                    SizedBox(height:10.0),
                    Row(children:[
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.tealAccent,
                            style: BorderStyle.solid,
                            width:2.0
                          ),
                          borderRadius: BorderRadius.circular(5.0)
                        ),
                        padding: EdgeInsets.all(7.0),
                        child: Sans("Javascript", 15),
                      ),
                      SizedBox(width:7.0),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.tealAccent,
                                style: BorderStyle.solid,
                                width:2.0
                            ),
                            borderRadius: BorderRadius.circular(5.0)
                        ),
                        padding: EdgeInsets.all(7.0),
                        child: Sans("Launch", 15),
                      ),
                      SizedBox(width:7.0),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.tealAccent,
                                style: BorderStyle.solid,
                                width:2.0
                            ),
                            borderRadius: BorderRadius.circular(5.0)
                        ),
                        padding: EdgeInsets.all(7.0),
                        child: Sans("Adobe Analytics", 15),
                      ),
                      SizedBox(width:7.0),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.tealAccent,
                                style: BorderStyle.solid,
                                width:2.0
                            ),
                            borderRadius: BorderRadius.circular(5.0)
                        ),
                        padding: EdgeInsets.all(7.0),
                        child: Sans("Tealium", 15),
                      ),
                    ]),

                  ],
                ),
              ],
            ),

          ),
          // third section
          Container(
            height: heightDevice / 1.3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SansBold("What I do?", 40.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    AnimatedCard(
                      imagePath: "assets/webL.png",
                      text: "Web development",
                    ),
                    AnimatedCard(
                      imagePath: "assets/app.png",
                      text: "App development",
                      fit: BoxFit.contain,
                      reverse: true,
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          ContactFormWeb(),
          SizedBox(height: 20.0),
        ],
      ),
    );
  }
}



