import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


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
        style:isSelected? GoogleFonts.oswald(
            color: Colors.black,
            fontSize:24.0,
          decoration: TextDecoration.underline,
          decorationThickness: 1,
          decorationColor: Colors.black
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
