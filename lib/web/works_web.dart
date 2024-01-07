import 'package:flutter/material.dart';
import '../components.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';
class WorksWeb extends StatefulWidget {
  const WorksWeb({super.key});

  @override
  State<WorksWeb> createState() => _WorksWebState();
}

class _WorksWebState extends State<WorksWeb> {
  @override
  Widget build(BuildContext context) {
    var widthDevice=MediaQuery.of(context).size.width;
    return Scaffold(
        drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        CircleAvatar(
        radius:72.0,
        backgroundColor: Colors.tealAccent,
        child: CircleAvatar(
        radius: 70.0,
        backgroundColor: Colors.white,
        backgroundImage: AssetImage('assets/atBeach.jpg'),
    ),
    ),
    SizedBox(height:15.0),
    SansBold("Catherine Kim", 30.0),
    SizedBox(height:15.0),
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
    IconButton(onPressed: ()async{
    await launchUrl(Uri.parse('https://www.linkedin.com/in/catherine-kim-12b5921'));
    }, icon: SvgPicture.asset('assets/linkedin.svg',width:35.0, )),
    IconButton(onPressed: ()async{
    await launchUrl(Uri.parse('https://twitter.com/cat_kim'));
    }, icon: SvgPicture.asset('assets/twitter.svg',width:35.0, )),
    IconButton(onPressed: ()async{
    await launchUrl(Uri.parse('https://github.com/catkim'));
    }, icon: SvgPicture.asset('assets/github.svg',width:35.0, )),
    ],
    ),
    ],
    ),
    ),
    backgroundColor: Colors.white,
    body: NestedScrollView(
    headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
    return <Widget>[
    SliverAppBar(
    expandedHeight: 450.0,
    backgroundColor: Colors.white,
    iconTheme: IconThemeData(
    size:25.0,
    color: Colors.black,
    ),
    flexibleSpace: FlexibleSpaceBar(
    background:Image.asset("assets/works.jpg",
    fit: BoxFit.cover,
    filterQuality: FilterQuality.high,
    )
    ),
    title: Row(
    children:[
    Spacer(flex:3,),
    TabsWeb(title: "Home", route:'/'),
    Spacer(),
    TabsWeb(title:"Works", route:'/works'),
    Spacer(),
    TabsWeb(title:"Blog", route:'/blog'),
    Spacer(),
    TabsWeb(title:"About", route:'/about'),
    Spacer(),
    TabsWeb(title:"Contact", route:'/contact'),
    Spacer(),
    ]
    ),
    ),
    ];
    }, body: ListView(
      children: [
        Column(
          children: [
            SizedBox(height:30.0),
            SansBold("Works", 40.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AnimatedCard(imagePath: "assets/appScreen.jpg",
                height:200.0,
                 width:300.0,
                ),
                SizedBox(width: widthDevice/3,
                  child: Column(
                    children: [
                      SansBold("Portfolio", 30.0),
                      SizedBox(height: 15.0),
                      Sans("Placeholder text", 15.0),
                    ],
                  ),
                ),

              ],
            ),
          ],
        ),
      ],
    ),
    ),
    );
  }
}
