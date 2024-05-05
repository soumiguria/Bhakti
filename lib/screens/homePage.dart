// import 'package:drema_challenge/screens/astrologerPage.dart';
// import 'package:drema_challenge/screens/communityPage.dart';
// import 'package:drema_challenge/screens/devotionalTripsPage.dart';
// import 'package:drema_challenge/screens/mantraPage.dart';
// import 'package:drema_challenge/screens/panditBookingPage.dart';
// import 'package:flutter/material.dart';

// class HomePage extends StatelessWidget {
//   // Define the color constant
//   final Color cardColor = Color(0xFF8C0944);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home'),
//       ),
//       body: Stack(
//         children: [
//           Image.asset(
//             'assets/images/bhakti_logo.jpg',
//             width: double.infinity,
//             height: double.infinity,
//             fit: BoxFit.cover,
//           ),
//           SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 SizedBox(
//                   height: MediaQuery.of(context).size.height * 0.2,
//                 ),
//                 Container(
//                   margin: EdgeInsets.symmetric(horizontal: 20),
//                   child: Column(
//                     children: [
//                       _buildButtonRow(context, cardColor, cardColor, 'Community', 'Mantras', '/community', '/mantra'),
//                       SizedBox(height: 20),
//                       _buildButtonRow(context, cardColor, cardColor, 'Consult Astrologer', 'Book Pandit', '/astrologer', '/pandit_booking'),
//                       SizedBox(height: 20),
//                       _buildSingleButton(context, cardColor, 'Devotional Trips', '/devotional_trips'),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildButtonRow(BuildContext context, Color color1, Color color2, String text1, String text2, String route1, String route2) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: [
//         _buildAnimatedButton(context, color1, text1, route1),
//         _buildAnimatedButton(context, color2, text2, route2),
//       ],
//     );
//   }

//   Widget _buildAnimatedButton(BuildContext context, Color color, String text, String route) {
//     return GestureDetector(
//       onTap: () {
//         _navigateWithAnimation(context, route); // Navigate with animation
//       },
//       child: Container(
//         width: MediaQuery.of(context).size.width * 0.4,
//         height: 160,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(20),
//           gradient: LinearGradient(
//             colors: [color.withOpacity(0.9), color.withOpacity(0.2)],
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//           ),
//           boxShadow: [
//             BoxShadow(
//               color: color.withOpacity(0.5),
//               spreadRadius: 3,
//               blurRadius: 7,
//               offset: Offset(0, 3),
//             ),
//           ],
//         ),
//         child: Center(
//           child: Text(
//             text,
//             style: TextStyle(
//               fontSize: 18,
//               color: Colors.white,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildSingleButton(BuildContext context, Color color, String text, String route) {
//     return GestureDetector(
//       onTap: () {
//         _navigateWithAnimation(context, route); // Navigate with animation
//       },
//       child: Container(
//         width: MediaQuery.of(context).size.width * 0.8,
//         height: 160,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(20),
//           gradient: LinearGradient(
//             colors: [color.withOpacity(0.9), color.withOpacity(0.2)],
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//           ),
//           boxShadow: [
//             BoxShadow(
//               color: color.withOpacity(0.5),
//               spreadRadius: 3,
//               blurRadius: 7,
//               offset: Offset(0, 3),
//             ),
//           ],
//         ),
//         child: Center(
//           child: Text(
//             text,
//             style: TextStyle(
//               fontSize: 18,
//               color: Colors.white,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   void _navigateWithAnimation(BuildContext context, String route) {
//     Widget destinationWidget;

//     // Determine the destination widget based on the route
//     switch (route) {
//       case '/community':
//         destinationWidget = CommunityPage(); // Replace CommunityPage with the actual widget for this route
//         break;
//       case '/mantra':
//         destinationWidget = MantraPage(); // Replace MantraPage with the actual widget for this route
//         break;
//       case '/astrologer':
//         destinationWidget = AstrologerPage(); // Replace AstrologerPage with the actual widget for this route
//         break;
//       case '/pandit_booking':
//         destinationWidget = PanditBookingPage(); // Replace PanditBookingPage with the actual widget for this route
//         break;
//       case '/devotional_trips':
//         destinationWidget = DevotionalTripsPage(); // Replace DevotionalTripsPage with the actual widget for this route
//         break;
//       default:
//         // Handle unknown routes
//         return;
//     }

//     // Navigate to the specified route with a scale animation
//     Navigator.push(
//       context,
//       PageRouteBuilder(
//         transitionDuration: Duration(milliseconds: 300),
//         pageBuilder: (context, animation, secondaryAnimation) {
//           return ScaleTransition(
//             scale: animation.drive(Tween(begin: 0.8, end: 1.0)),
//             child: destinationWidget,
//           );
//         },
//       ),
//     );
//   }
// }





import 'package:drema_challenge/screens/astrologerPage.dart';
import 'package:drema_challenge/screens/communityPage.dart';
import 'package:drema_challenge/screens/devotionalTripsPage.dart';
import 'package:drema_challenge/screens/mantraPage.dart';
import 'package:drema_challenge/screens/panditBookingPage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  // Define the color constant
  final Color cardColor = Color(0xFF8C0944);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Stack(
        children: [
          Image.asset(
            'assets/images/bhakti_logo.jpg',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      _buildButtonRow(context, cardColor, cardColor, 'Community', 'Mantras', '/community', '/mantra'),
                      SizedBox(height: 20),
                      _buildButtonRow(context, cardColor, cardColor, 'Consult Astrologer', 'Book Pandit', '/astrologer', '/pandit_booking'),
                      SizedBox(height: 20),
                      _buildSingleButton(context, cardColor, 'Devotional Trips', '/devotional_trips'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButtonRow(BuildContext context, Color color1, Color color2, String text1, String text2, String route1, String route2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildAnimatedButton(context, color1, text1, route1),
        _buildAnimatedButton(context, color2, text2, route2),
      ],
    );
  }

  Widget _buildAnimatedButton(BuildContext context, Color color, String text, String route) {
    bool isFlipped = false;

    return GestureDetector(
      onTap: () {
        if (!isFlipped) {
          _navigateWithAnimation(context, route); // Navigate with animation on single tap
        }
      },
      onDoubleTap: () {
        // Handle double tap to flip the card
        isFlipped = !isFlipped;
        Future.delayed(Duration(milliseconds: 1500), () {
          isFlipped = false; // Flip back after some delay
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
        width: MediaQuery.of(context).size.width * 0.4,
        height: 160,
        transform: isFlipped ? Matrix4.rotationY(3.14) : Matrix4.identity(),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            colors: [color.withOpacity(0.9), color.withOpacity(0.2)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          boxShadow: [
            BoxShadow(
              color: color.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Center(
          child: Text(
            isFlipped ? 'Back Side Text' : text,
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSingleButton(BuildContext context, Color color, String text, String route) {
    return GestureDetector(
      onTap: () {
        _navigateWithAnimation(context, route); // Navigate with animation
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            colors: [color.withOpacity(0.9), color.withOpacity(0.2)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          boxShadow: [
            BoxShadow(
              color: color.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  void _navigateWithAnimation(BuildContext context, String route) {
    Widget destinationWidget;

    // Determine the destination widget based on the route
    switch (route) {
      case '/community':
        destinationWidget = CommunityPage(); // Replace CommunityPage with the actual widget for this route
        break;
      case '/mantra':
        destinationWidget = MantraPage(); // Replace MantraPage with the actual widget for this route
        break;
      case '/astrologer':
        destinationWidget = AstrologerPage(); // Replace AstrologerPage with the actual widget for this route
        break;
      case '/pandit_booking':
        destinationWidget = PanditBookingPage(); // Replace PanditBookingPage with the actual widget for this route
        break;
      case '/devotional_trips':
        destinationWidget = DevotionalTripsPage(); // Replace DevotionalTripsPage with the actual widget for this route
        break;
      default:
        // Handle unknown routes
        return;
    }

    // Navigate to the specified route with a scale animation
    Navigator.push(
      context,
      PageRouteBuilder(
        transitionDuration: Duration(milliseconds: 300),
        pageBuilder: (context, animation, secondaryAnimation) {
          return ScaleTransition(
            scale: animation.drive(Tween(begin: 0.8, end: 1.0)),
            child: destinationWidget,
          );
        },
      ),
    );
  }
}
