import 'package:flutter/material.dart';
import '../components.dart';

class ContactMobile extends StatefulWidget {
  const ContactMobile({super.key});

  @override
  State<ContactMobile> createState() => _ContactMobileState();
}

class _ContactMobileState extends State<ContactMobile> {
  @override
  Widget build(BuildContext context) {
    var widthDevice=MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      endDrawer: DrawersWeb(),
      backgroundColor: Colors.white,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 115.0,
              backgroundColor: Colors.white,
              iconTheme: IconThemeData(size: 35.0, color: Colors.black),
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  "assets/contact_image.jpg",
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                ),
              ),
              title: TabsWebList(),
            )
          ];
        },
        body: SingleChildScrollView(
          padding:EdgeInsets.symmetric(vertical: 25.0),
          child: Wrap(
            runSpacing: 20.0,
            spacing:20.0,
            alignment: WrapAlignment.center,
            children:[
              SansBold("Contact me", 35.0),
              TextForm(text: "First Name", containerWidth: widthDevice/1.4, hintText: "Please text first name",),
              TextForm(text: "Last name", containerWidth: widthDevice/1.4, hintText: "Please enter last name", ),
              TextForm(text: "Phone number", containerWidth: widthDevice/1.4, hintText: "Please enter phone number", ),
              TextForm(text: "Email", containerWidth: widthDevice/1.4, hintText: "Please enter email address", ),
              TextForm(text: "Message", containerWidth: widthDevice/1.4, hintText: "Please enter a message", maxLines:10),
              MaterialButton(onPressed: (){},
              elevation: 20.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                height:60.0,
              color: Colors.tealAccent,
                minWidth: widthDevice/2.2,
                child:SansBold("Submit", 20.0),
              )
            ]
          ),
          //ContactFormWeb(),
        ),
      ),
    );
  }
}
