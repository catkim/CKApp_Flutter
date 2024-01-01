import 'package:catkim_app/web/about_web.dart';
import 'package:flutter/material.dart';
import 'mobile/about_mobile.dart';
import 'mobile/landing-page_mobile.dart';
import 'web/landing-page_web.dart';
import 'mobile/contact_mobile.dart';
import 'web/contact_web.dart';

class RouteGenerator{
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name) {
      case '/':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => // HomeWeb(),
          LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 800) {
                return LandingPageWeb();
              } else {
                return LandingPageMobile('test"');
              }
            },
          ),
        );
      case '/contact':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) =>
          LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 800) {
                return ContactWeb();
              } else {
                return ContactMobile();
              }
            },
          ),
        );
      case '/about':
    return MaterialPageRoute(
    settings: settings,
    builder: (_) =>
    LayoutBuilder(
    builder: (context, constraints) {
    if (constraints.maxWidth > 800) {
    return AboutWeb();
    } else {
    return AboutMobile();
    }
    },
    ),
    );
      default:
        return MaterialPageRoute(
          builder: (_) {
            return Center(
              child: Text("Error Page"),
            );
          },
        );
    }
  }




 Route<dynamic> _errorRoute() {
return MaterialPageRoute(
builder: (_) {
return Center(
child: Text("Error Page"),
);
},
);
}
}