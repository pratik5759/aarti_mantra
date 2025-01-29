
import 'package:aarti_mantra/features/splash_screen/splash_screens/durga_splash.dart';
import 'package:aarti_mantra/features/splash_screen/splash_screens/shiv_splash.dart';
import 'package:aarti_mantra/features/splash_screen/splash_screens/vitthal_splash.dart';
import 'package:flutter/material.dart';

import '../aarti_screen/all_screen.dart';
import '../aarti_screen/durga_screen.dart';
import '../aarti_screen/dutta_screen.dart';
import '../aarti_screen/ganesh_screen.dart';
import '../aarti_screen/ghalin_screen.dart';
import '../aarti_screen/shiv_screen.dart';
import '../aarti_screen/vitthal_screen.dart';
import '../splash_screen/splash_screens/dutta_splash.dart';
import '../splash_screen/splash_screens/galin_splash.dart';
import '../splash_screen/splash_screens/ganesh_splash.dart';



class AartiSangrahApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AartiSangrahScreen(),
    );
  }
}

class AartiSangrahScreen extends StatelessWidget {
  final List<Map<String, dynamic>> aartiItems = [
    {
      "title": "गणपती आरती",
      "color": Color(0xFF7C1025),
      "image": "assets/images/god_img/G.png", // Replace with your asset path
      "textColor": Colors.white, // Text color
    },
    {
      "title": "देवी दुर्गा आरती",
      "color": Color(0xFFFFF8E5), // Hex color FFF8E5
      "image": "assets/images/god_img/Dug.png", // Replace with your asset path
      "textColor": Colors.black, // Text color
    },
    {
      "title": "दत्ताची आरती",
      "color": Color(0xFF47914E),
      "image": "assets/images/god_img/D.png", // Replace with your asset path
      "textColor": Colors.white, // Text color
    },
    {
      "title": "शंकराची आरती",
      "color": Color(0xFF1D477B),
      "image": "assets/images/god_img/S.png", // Replace with your asset path
      "textColor": Colors.white, // Text color
    },
    {
      "title": "विठ्ठल आरती",
      "color": Color(0xFFECC133),
      "image": "assets/images/god_img/V.png", // Replace with your asset path
      "textColor": Colors.black, // Text color
    },
    {
      "title": "घालीन लोटांगण",
      "color": Color(0xFFFF6F00),
      "image": "assets/images/god_img/om1.png", // Replace with your asset path
      "textColor": Colors.white, // Text color
    },
    {
      "title": "सर्व आरती",
      "color": Color(0xFF0000FF),
      "image": "assets/images/god_img/om2.png", // Replace with your asset path
      "textColor": Colors.white, // Text color
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 70,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'आरती संग्रह',
            style: TextStyle(
              color: Colors.orange.shade800,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          leading: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.help_outline,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/god_img/home_bg.png"),
              // Replace with your asset
              fit: BoxFit.cover,
            ),
          ),
          child: ListView.builder(
            itemCount: aartiItems.length,
            itemBuilder: (context, index) {
              final item = aartiItems[index];
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: GestureDetector(
                  onTap: () {
                    // if (item['title'] == "गणपती आरती") {
                    //   Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => GanpatiScreen(),
                    //     ),
                    //   );
                    // }

                    if (item['title'] == "गणपती आरती") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => GaneshSplashScreen(),
                        ),
                      );/*.then((_) {
                        // After the splash screen, navigate to GanpatiScreen
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => GanpatiScreen(),
                          ),
                        );
                      });*/
                    }

                    // if (item['title'] == "देवी दुर्गा आरती") {
                    //   Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => DurgaScreen(),
                    //     ),
                    //   );
                    // }

                    if (item['title'] == "देवी दुर्गा आरती") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DurgaSplashScreen(),
                        ),
                      );/*.then((_) {
                        // After the splash screen, navigate to GanpatiScreen
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DurgaScreen(),
                          ),
                        );
                      });*/
                    }
                    // if (item['title'] == "दत्ताची आरती") {
                    //   Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => DuttaScreen(),
                    //     ),
                    //   );
                    // }

                    if (item['title'] == "दत्ताची आरती") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DuttaSplashScreen(),
                        ),
                      );/*.then((_) {
                        // After the splash screen, navigate to GanpatiScreen
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DuttaScreen(),
                          ),
                        );
                      });*/
                    }

                    if (item['title'] == "शंकराची आरती") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ShivSplashScreen(),
                        ),
                      );/*.then((_) {
                        // After the splash screen, navigate to GanpatiScreen
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ShivScreen(),
                          ),
                        );
                      });*/
                    }
                    // if (item['title'] == "शंकराची आरती") {
                    //   Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => ShivScreen(),
                    //     ),
                    //   );
                    // }
                    // if (item['title'] == "विठ्ठल आरती") {
                    //   Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => VitthalScreen(),
                    //     ),
                    //   );
                    // }

                    if (item['title'] == "विठ्ठल आरती") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => VitthalSplashScreen(),
                        ),
                      );/*.then((_) {
                        // After the splash screen, navigate to GanpatiScreen
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => VitthalScreen(),
                          ),
                        );
                      });*/
                    }
                    // if (item['title'] == "घालीन लोटांगण") {
                    //   Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => GhalinScreen(),
                    //     ),
                    //   );
                    // }
                    if (item['title'] == "घालीन लोटांगण") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => GhalinSplashScreen(),
                        ),
                      );/*.then((_) {
                        // After the splash screen, navigate to GanpatiScreen
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => GhalinScreen(),
                          ),
                        );
                      });*/
                    }
                    if (item['title'] == "सर्व आरती") {
                      try {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => AllScreen(
                        //       aartiScreens: [
                        //         GanpatiScreen(),
                        //         DurgaScreen(),
                        //         DuttaScreen(),
                        //         ShivScreen(),
                        //         VitthalScreen(),
                        //         GhalinScreen(),
                        //       ],
                        //     ),
                        //   ),
                        // );
                      } catch (e) {
                        print("Error navigating to AllScreen: $e");
                      }
                    }

                    // Handle tap event here
                  },
                  child: Container(
                    height: 80,
                    decoration: BoxDecoration(
                      color: item['color'],
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(
                            40), // Curve for the top-left corner
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(10),
                        topLeft: Radius.circular(
                            10), // Curve for the bottom-right corner)
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        if (item['image'] != null &&
                            item['image'].isNotEmpty) // Check if image exists
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 12.0),
                            child: Image.asset(
                              item['image'], // Use asset image
                              height: 60,
                              width: 60,
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        Text(
                          item['title'],
                          style: TextStyle(
                            color: item['textColor'],
                            // Use the specific text color
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
