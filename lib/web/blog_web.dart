import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components.dart';

class BlogWeb extends StatefulWidget {
  const BlogWeb({super.key});

  @override
  State<BlogWeb> createState() => _BlogWebState();
}

class _BlogWebState extends State<BlogWeb> {
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
                  title: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(3.0),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 7.0),
                    child: AbelCustom(
                      text: "Welcome to my blog",
                      size: 30.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  background: Image.asset("assets/blog.jpg", filterQuality: FilterQuality.high, fit: BoxFit.cover)
              ),
              expandedHeight: 500.0,
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
      padding: const EdgeInsets.only(left:70.0, right:70.0, top:40.0),
      child: Container(
        padding: EdgeInsets.all(20.0),
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
            Text("I'm baby in marxism adaptogen kitsch mukbang, hexagon tumblr laborum bodega boys VHS. Brunch meditation retro forage cliche. Magna aliquip microdosing kinfolk aliqua fit adipisicing, marfa green juice master cleanse dreamcatcher. Distillery nisi godard, cold-pressed et farm-to-table flexitarian single-origin coffee ut yuccie hoodie sed schlitz ad synth XOXO mollit pour-over, vape everyday carry lorem culpa hammock heirloom wolf. Laboris godard excepteur glossier banjo tacos. Bodega boys typewriter readymade id. Wayfarers venmo labore, lo-fi letterpress slow-carb kickstarter schlitz pariatur adaptogen everyday carry. Echo park shoreditch narwhal lo-fi.Taxidermy pabst cornhole godard. Praxis green juice chicharrones sed, banh mi adaptogen pug locavore hell of. Tilde shoreditch drinking vinegar, jianbing ut actually elit skateboard everyday carry ad pabst 3 wolf moon af gochujang adipisicing. Neutra glossier ipsum banjo forage ugh ethical scenester.Dummy text? More like dummy thicc text, amirite?",
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
