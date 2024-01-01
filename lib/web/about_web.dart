import 'package:flutter/material.dart';

import '../components.dart';

class AboutWeb extends StatefulWidget {
  const AboutWeb({super.key});

  @override
  State<AboutWeb> createState() => _AboutWebState();
}

class _AboutWebState extends State<AboutWeb> {
  @override
  Widget build(BuildContext context) {
    var heightDevice=MediaQuery.of(context).size.height;
    var widthDevice=MediaQuery.of(context).size.width;
    return  Scaffold(
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
        children:[
          // About me fist section
          SizedBox(
            height: 500.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   SansBold("About me", 40.0),
                   SizedBox(height:15.0),
                   Sans("Hello I'm Catherine Kim, I specialize in Data Analytics. I deliver quality data analytics implementations", 15.0),
                   SizedBox(height:10.0),
                   Row(
                     children: [
                       tealContainer('Javascript'),
                       SizedBox(width:7.0),
                       tealContainer('Launch'),
                       SizedBox(width:7.0),
                       tealContainer('Adobe Analytics'),
                       SizedBox(width:7.0),
                       tealContainer('Tealium'),
                       SizedBox(width:7.0),
                       tealContainer('ObservePoint'),
                       SizedBox(width:7.0),
                     ],
                   ),
                 ],
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
                      child: Image.asset('assets/atBeachCropped.png', filterQuality: FilterQuality.high,),
                    ),
                  ),
                ),
              ],
            ),

          ),
          // Data collection second section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[
              AnimatedCard(imagePath: "assets/webL.png",
              height: 250.0,
                width: 250.0,
              ),
              SizedBox(
                  width:widthDevice/3,
                child:Column(
                  children: [
                    SansBold("Data Collections Architect", 30.0),
                    SizedBox(height:15.0),
                    Sans("Quality data collection", 15.0),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height:20.0),
          // implementation Engineer third section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: widthDevice/3,
                child: Column(
                  children: [
                    SansBold("Implementation Engineer", 30.0),
                    SizedBox(height:15.0),
                    Sans("Building quality data collections", 15.0),
                  ],
                ),
              ),
              AnimatedCard(imagePath: "assets/app.png",
              height:250.0,
                width:250.0,
                reverse: true,
              )
            ],
          ),
          SizedBox(height:60.0),
        ],
      ),
    );
  }
}
