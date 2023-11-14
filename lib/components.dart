import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_svg/flutter_svg.dart';


class TabsWeb extends StatefulWidget {
  final title;
  const TabsWeb(this.title,{super.key});

  @override
  State<TabsWeb> createState() => _TabsWebState();
}

class _TabsWebState extends State<TabsWeb> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter:(_){
        setState(() {
          isSelected=true;
        });
      },
      onExit: (_){
       setState(() {
         isSelected=false;
       });
      },
      child: AnimatedDefaultTextStyle(
        duration: const Duration(milliseconds: 100),
        curve: Curves.elasticIn,
        style:isSelected? GoogleFonts.oswald(
          shadows:[Shadow(
            color: Colors.black,
            offset: Offset(0, -1),
          )],
            color: Colors.transparent,
            fontSize:24.0,
          decoration: TextDecoration.underline,
          decorationThickness: 1,
          decorationColor: Colors.tealAccent
        ):
       GoogleFonts.oswald(color:Colors.black,
       fontSize: 23.0,
       ),
        child: Text(
            widget.title,
        ),
      ),
    );
  }
}


class TabsMobile extends StatefulWidget {
  final text;
  final route;

  const TabsMobile({Key? key, @required this.text, @required this.route})
      : super(key: key);

  @override
  _TabsMobileState createState() => _TabsMobileState();
}

class _TabsMobileState extends State<TabsMobile> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 20.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      height: 50.0,
      minWidth: 200.0,
      color: Colors.black,
      child: Text(
        widget.text,
        style: GoogleFonts.openSans(fontSize: 20.0, color: Colors.white),
      ),
      onPressed: () {
        Navigator.of(context).pushNamed(widget.route);
      },
    );
  }
}


class SansBold extends StatelessWidget {
  final text;
  final size;
  const SansBold(this.text, this.size, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(
          fontSize: size, fontWeight:FontWeight.bold),
    );
  }
}

class Sans extends StatelessWidget {
  final text;
  final size;
  const Sans(this.text, this.size,{super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(
          fontSize: size),
    );
  }
}

urlLauncher(String imgPath, String url) {
  return IconButton(
    icon: SvgPicture.asset(imgPath, color: Colors.black, width: 35),
    onPressed: () async {
      await launchUrl(Uri.parse(url));
    },
  );
}

class DrawersWeb extends StatelessWidget {
  const DrawersWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 72.0,
            backgroundColor: Colors.tealAccent,
            child: CircleAvatar(
              radius: 70.0,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage("assets/image.png"),
            ),
          ),
          SizedBox(height: 15.0),
          SansBold("Catherine Kim", 30.0),
          SizedBox(height: 15.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              urlLauncher("assets/instagram.svg",
                  "https://www.instagram.com/tomcruise/"),
              urlLauncher(
                  "assets/twitter.svg", "https://www.twitter.com/tomcruise"),
              urlLauncher(
                  "assets/github.svg", "https://github.com/sagnik150699/paulina_knop"),
            ],
          ),
        ],
      ),
    );
  }
}

class DrawersMobile extends StatelessWidget {
  const DrawersMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DrawerHeader(
            padding: EdgeInsets.only(bottom: 20.0),
            child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 2.0, color: Colors.black)),
              child: Image.asset(
                'assets/profile2-circle.png',
                filterQuality: FilterQuality.high,
              ),
            ),
          ),
          TabsMobile(text: "Home", route: '/'),
          SizedBox(height: 20.0),
          TabsMobile(text: "Works", route: '/works'),
          SizedBox(height: 20.0),
          TabsMobile(text: "Blog", route: '/blog'),
          SizedBox(height: 20.0),
          TabsMobile(text: "About", route: '/about'),
          SizedBox(height: 20.0),
          TabsMobile(text: "Contact", route: '/contact'),
          SizedBox(height: 40.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              urlLauncher("assets/instagram.svg",
                  "https://www.instagram.com/tomcruise/"),
              urlLauncher(
                  "assets/twitter.svg", "https://www.twitter.com/tomcruise"),
              urlLauncher(
                  "assets/github.svg", "https://github.com/sagnik150699/paulina_knop"),
            ],
          )
        ],
      ),
    );
  }
}


class AnimatedCard extends StatefulWidget {
  final imagePath;
  final text;
  final fit;
  final reverse;
  final height;
  final width;

  const AnimatedCard(
      {Key? key,
        @required this.imagePath,
        this.text,
        this.fit,
        this.reverse,
        this.height,
        this.width})
      : super(key: key);

  @override
  _AnimatedCardState createState() => _AnimatedCardState();
}

class _AnimatedCardState extends State<AnimatedCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 4),
  )..repeat(reverse: true);

  late Animation<Offset> _animation = Tween(
    begin: widget.reverse == true ? Offset(0, 0.08) : Offset.zero,
    end: widget.reverse == true ? Offset.zero : Offset(0, 0.08),
  ).animate(_controller);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Card(
        elevation: 30.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
          side: BorderSide(color: Colors.tealAccent),
        ),
        shadowColor: Colors.tealAccent,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                widget.imagePath,
                height: widget.height == null ? 200.0 : widget.height,
                width: widget.width == null ? 200.0 : widget.width,
                fit: widget.fit == null ? null : widget.fit,
              ),
              SizedBox(height: 10.0),
              widget.text == null ? SizedBox() : SansBold(widget.text, 15.0),
            ],
          ),
        ),
      ),
    );
  }
}

class TextForm extends StatelessWidget {
  final text;
  final containerWidth;
  final hintText;
  final maxLines;
  final controller;
  final validator;

  const TextForm(
      {Key? key,
        @required this.text,
        @required this.containerWidth,
        @required this.hintText,
        this.maxLines,
        @required this.controller,
        this.validator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Sans(text, 16.0),
        SizedBox(height: 5),
        SizedBox(
          width: containerWidth,
          child: TextFormField(
            validator: validator,
            controller: controller,
            maxLines: maxLines == null ? null : maxLines,
            decoration: InputDecoration(
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.teal),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.tealAccent, width: 2.0),
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
              ),
              hintText: hintText,
              hintStyle: GoogleFonts.poppins(fontSize: 14),
            ),
          ),
        ),
      ],
    );
  }
}





class ContactFormWeb extends StatefulWidget {
  const ContactFormWeb({Key? key}) : super(key: key);

  @override
  State<ContactFormWeb> createState() => _ContactFormWebState();
}

class _ContactFormWebState extends State<ContactFormWeb> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    return Form(
      key: formKey,
      child: Column(
        children: [
          SizedBox(height: 30.0),
          SansBold("Contact me", 40.0),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  TextForm(
                    text: "First Name",
                    containerWidth: 350.0,
                    hintText: "Please type first name",

                    validator: (text) {
                      if (text.toString().isEmpty) {
                        return "First name is required";
                      }
                    },
                  ),
                  SizedBox(height: 15.0),
                  TextForm(
                      text: "Email",
                      containerWidth: 350.0,
                      hintText: "Please type email address",
                      validator: (text) {
                        if (text.toString().isEmpty) {
                          return "Email is required";
                        }
                      }),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextForm(
                    text: "Last Name",
                    containerWidth: 350.0,
                    hintText: "Please type last name",
                  ),
                  SizedBox(height: 15.0),
                  TextForm(
                    text: "Phone number",
                    containerWidth: 350.0,
                    hintText: "Please type phone number",
                  )
                ],
              ),
            ],
          ),
          SizedBox(height: 20.0),
          TextForm(
            text: "Message",
            containerWidth: widthDevice / 1.5,
            hintText: "Please type your message",
            maxLines: 10,

          ),
          SizedBox(height: 20.0),
          MaterialButton(
            onPressed: ()  {
             print('pressed');
            },
            elevation: 20.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            height: 60.0,
            minWidth: 200.0,
            color: Colors.tealAccent,
            child: SansBold("Submit", 20.0),
          ),
          SizedBox(height: 10.0)
        ],
      ),
    );
  }
}

class ContactFormMobile extends StatefulWidget {
  const ContactFormMobile({Key? key}) : super(key: key);

  @override
  State<ContactFormMobile> createState() => _ContactFormMobileState();
}

class _ContactFormMobileState extends State<ContactFormMobile> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    return Form(
      key: formKey,
      child: Wrap(
        runSpacing: 20.0,
        spacing: 20.0,
        alignment: WrapAlignment.center,
        children: [
          SansBold("Contact me", 35.0),
          TextForm(
            text: "First name",
            containerWidth: widthDevice / 1.4,
            hintText: "Please type first name",
            validator: (text) {
              if (text.toString().isEmpty) {
                return "First name is required";
              }
            },
          ),
          TextForm(
            text: "Last name",
            containerWidth: widthDevice / 1.4,
            hintText: "Please type last name",
          ),
          TextForm(
            text: "Phone number",
            containerWidth: widthDevice / 1.4,
            hintText: "Please type phone number",
          ),
          TextForm(
              text: "Email",
              containerWidth: widthDevice / 1.4,
              hintText: "Please type email address",
              validator: (text) {
                if (text.toString().isEmpty) {
                  return "Email is required";
                }
              }),
          TextForm(
            text: "Message",
            containerWidth: widthDevice / 1.4,
            hintText: "Please type your message",
            maxLines: 10,
            validator: (text) {
              if (text.toString().isEmpty) {
                return "Message is required";
              }
            },
          ),

        ],
      ),
    );
  }
}


tealContainer(String text) {
  return Container(
    decoration: BoxDecoration(
        border: Border.all(
          color: Colors.tealAccent,
          style: BorderStyle.solid,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(5.0)),
    padding: EdgeInsets.all(7.0),
    child: Text(
      text,
      style: GoogleFonts.openSans(fontSize: 15.0),
    ),
  );
}


