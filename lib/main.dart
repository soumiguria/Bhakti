// import 'package:drema_challenge/screens/splashScreen.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(primaryColor: Color(0xFF8C0944)),
//       home: SplashScreen(), 
//     );
//   }
// }



import 'package:drema_challenge/screens/communityPage.dart';
import 'package:drema_challenge/screens/devotionalTripsPage.dart';
import 'package:drema_challenge/screens/homePage.dart';
import 'package:drema_challenge/screens/mantraPage.dart';
import 'package:drema_challenge/screens/astrologerPage.dart';
import 'package:drema_challenge/screens/panditBookingPage.dart';
import 'package:drema_challenge/screens/splashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Color(0xFF8C0944)),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/home': (context) => HomePage(),
        '/community': (context) => CommunityPage(),
        '/mantra': (context) => MantraPage(),
        '/astrologer': (context) => AstrologerPage(),
        '/pandit_booking': (context) => PanditBookingPage(),
        '/devotional_trips': (context) => DevotionalTripsPage(),
      },
    );
  }
}
