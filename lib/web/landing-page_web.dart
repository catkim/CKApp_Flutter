
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components.dart';
class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({super.key});

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {
  @override
  Widget build(BuildContext context) {
    var heightDevise=MediaQuery.of(context).size.height;
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
            Spacer(flex: 3),
            TabsWeb("Home"),
            Spacer(),
            TabsWeb("About"),
            Spacer(),
            TabsWeb("Blog"),
            Spacer(),
            TabsWeb("Contact"),
            Spacer(),
          ],
        ),
      ),
      body: ListView(
        children: [
          //First page
          Container(
          height: heightDevise-56,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
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
        ),],
      ),
    );
  }
}



