

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components.dart';

class BlogMobile extends StatefulWidget {
  const BlogMobile({super.key});

  @override
  State<BlogMobile> createState() => _BlogMobileState();
}

class _BlogMobileState extends State<BlogMobile> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child:Scaffold(
        extendBodyBehindAppBar: true,
        endDrawer: DrawersWeb(),
        backgroundColor: Colors.white,
        body: NestedScrollView(headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.white,
              iconTheme: IconThemeData(
                size: 35.0,
                color: Colors.black
              ),
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 4.0),
                  child: AbelCustom(
                    text: "Welcome to my blog",
                    size: 24.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                background: Image.asset("assets/blog.jpg", filterQuality: FilterQuality.high, fit: BoxFit.cover)
              ),
              expandedHeight: 400.0,
            ),
          ];
        }, body: ListView(
          children: [
            BlogPost(),
            BlogPost(),
            BlogPost(),
            BlogPost(),
          ],
        ),),
      ),
    );
  }
}
class BlogPost extends StatefulWidget {
  const BlogPost({super.key});

  @override
  State<BlogPost> createState() => _BlogPostState();
}

class _BlogPostState extends State<BlogPost> {
  bool expand=false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:20.0, right:20.0, top:30.0),
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          border: Border.all(
            style:BorderStyle.solid,
            width:1.0,
            color: Colors.black,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius:  BorderRadius.circular(3.0),
                  ),
                  child: AbelCustom(
                    text: "Adding a blog post",
                    size: 25.0,
                    color: Colors.white,
                  ),
                ),
                IconButton(onPressed: (){
                  setState((){
                    expand =!expand;
                  });
                },
                  icon: Icon(Icons.arrow_drop_down_circle_outlined),
                color: Colors.black,
                ),
              ],
            ),
            SizedBox(height:7.0),
            Text("I'm baby succulents et try-hard, ut biodiesel authentic Brooklyn aliqua. Cupping keffiyeh shabby chic swag. Same mustache ex tempor, skateboard marxism slow-carb banh mi swag eu twee. Austin forage id ethical sunt banh mi sriracha letterpress single-origin coffee taxidermy kogi chicharrones. Ex ascot actually four loko, marfa cronut ullamco XOXO.",
            style: GoogleFonts.openSans(fontSize: 15.0),
            maxLines: expand ==true?null:3,
              overflow: expand == true? TextOverflow.visible:TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}

