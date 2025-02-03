// import 'package:aarti_mantra/features/home_screen/setting_screen.dart';
// import 'package:aarti_mantra/features/splash_screen/splash_screens/durga_splash.dart';
// import 'package:aarti_mantra/features/splash_screen/splash_screens/shiv_splash.dart';
// import 'package:aarti_mantra/features/splash_screen/splash_screens/vitthal_splash.dart';
// import 'package:flutter/material.dart';
// import '../aarti_screen/all_screen.dart';
// import '../aarti_screen/durga_screen.dart';
// import '../aarti_screen/dutta_screen.dart';
// import '../aarti_screen/ganesh_screen.dart';
// import '../aarti_screen/ghalin_screen.dart';
// import '../aarti_screen/shiv_screen.dart';
// import '../aarti_screen/vitthal_screen.dart';
// import '../splash_screen/splash_screens/dutta_splash.dart';
// import '../splash_screen/splash_screens/galin_splash.dart';
// import '../splash_screen/splash_screens/ganesh_splash.dart';
// import 'about_screen.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
//
//
// class AartiSangrahScreen extends StatefulWidget {
//   @override
//   State<AartiSangrahScreen> createState() => _AartiSangrahScreenState();
// }
//
// class _AartiSangrahScreenState extends State<AartiSangrahScreen> {
//   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
//
//   @override
//   Widget build(BuildContext context) {
//   // Add GlobalKey
//   final List<Map<String, dynamic>> aartiItems = [
//     {
//       "title":   AppLocalizations.of(context)!.ganapatiaarti,
//       "color": Color(0xFF7C1025),
//       "image": "assets/images/god_img/G.png", // Replace with your asset path
//       "textColor": Colors.white, // Text color
//     },
//     {
//       "title":  AppLocalizations.of(context)!.durgaaarti,
//       "color": Color(0xFFFFF8E5), // Hex color FFF8E5
//       "image": "assets/images/god_img/Dug.png", // Replace with your asset path
//       "textColor": Colors.black, // Text color
//     },
//     {
//       "title":  AppLocalizations.of(context)!. duttaaarti,
//       "color": Color(0xFF47914E),
//       "image": "assets/images/god_img/D.png", // Replace with your asset path
//       "textColor": Colors.white, // Text color
//     },
//     {
//       "title":  "shiv arati",
//       "color": Color(0xFF1D477B),
//       "image": "assets/images/god_img/S.png", // Replace with your asset path
//       "textColor": Colors.white, // Text color
//     },
//     {
//       "title": AppLocalizations.of(context)!. vitthalaarti,
//       "color": Color(0xFFECC133),
//       "image": "assets/images/god_img/V.png", // Replace with your asset path
//       "textColor": Colors.black, // Text color
//     },
//     {
//       "title": AppLocalizations.of(context)!.ghalinaarti,
//       "color": Color(0xFFFF6F00),
//       "image": "assets/images/god_img/om1.png", // Replace with your asset path
//       "textColor": Colors.white, // Text color
//     },
//     {
//       "title": AppLocalizations.of(context)!.allaarties,
//       "color": Color(0xFFADD8E6),
//       "image": "assets/images/god_img/om2.png", // Replace with your asset path
//       "textColor": Colors.black, // Text color
//     },
//   ];
//
//
//     return SafeArea(
//       child: Scaffold(
//         key: _scaffoldKey, // Assign the GlobalKey to Scaffold
//         appBar: AppBar(
//           backgroundColor: Colors.white,
//           toolbarHeight: 70,
//           elevation: 0,
//           centerTitle: true,
//           title: Text(
//             AppLocalizations.of(context)!.aartisangrah,
//             style: TextStyle(
//               color: Colors.orange.shade800,
//               fontWeight: FontWeight.bold,
//               fontSize: 24,
//             ),
//           ),
//           leading: IconButton(
//             icon: Icon(Icons.menu, color: Colors.black),
//             onPressed: () {
//               _scaffoldKey.currentState?.openDrawer(); // Open the drawer
//             },
//           ),
//           actions: [
//             IconButton(
//               icon: Icon(
//                 Icons.help_outline,
//                 color: Colors.black,
//               ),
//               onPressed: () {},
//             ),
//           ],
//         ),
//
//         drawer: Drawer(
//           child: Container(
//             color: Color(0xFFf5f5f5), // Light background color for the drawer
//             child: ListView(
//               padding: EdgeInsets.zero,
//               children: <Widget>[
//                 DrawerHeader(
//                   decoration: BoxDecoration(
//                     color: Colors.white, // Background color for the header
//                     borderRadius: BorderRadius.only(
//                       bottomLeft: Radius.circular(30),
//                       bottomRight: Radius.circular(30),
//                     ),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.grey.withOpacity(0.5),
//                         blurRadius: 5,
//                         offset: Offset(0, 3),
//                       ),
//                     ],
//                   ),
//                   child: Column(
//                     children: [
//                       CircleAvatar(
//                         radius: 40,
//                         backgroundImage:
//                             AssetImage("assets/images/god_img/dev2.webp"),
//                       ),
//                       SizedBox(height: 10),
//                       Text(
//                         AppLocalizations.of(context)!.aartisangrah,
//                         style: TextStyle(
//                           fontSize: 22,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.orange.shade800,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//
//                 // Home ListTile
//                 ListTile(
//                   leading: Icon(Icons.home, color: Colors.orange.shade700),
//                   title: Text(
//                     AppLocalizations.of(context)!.home,
//                     style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 18,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                   contentPadding:
//                       EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//                   tileColor: Colors.white,
//                   // Custom background color for each tile
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => AartiSangrahScreen(),
//                       ),
//                     );
//                   },
//                 ),
//                 // About ListTile
//                 ListTile(
//                   leading: Icon(Icons.info, color: Colors.orange.shade700),
//                   title: Text(
//                     AppLocalizations.of(context)!.about,
//                     style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 18,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                   contentPadding:
//                       EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//                   tileColor: Colors.white,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   onTap: () {
//                     // Navigator.pop(context);
//
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => AboutScreen(),
//                       ),
//                     );
//                   },
//                 ),
//                 // Settings ListTile
//                 ListTile(
//                   leading: Icon(Icons.settings, color: Colors.orange.shade700),
//                   title: Text(
//                     AppLocalizations.of(context)!.setting,
//                     style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 18,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                   contentPadding:
//                       EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//                   tileColor: Colors.white,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   onTap: () {
//
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) =>  LanguageSettingsScreen(),
//                       ),
//                     );
//                     //Navigator.pop(context);
//                   },
//                 ),
//                 // Logout ListTile
//                 // ListTile(
//                 //   leading:
//                 //       Icon(Icons.exit_to_app, color: Colors.orange.shade700),
//                 //   title: Text(
//                 //     'Logout',
//                 //     style: TextStyle(
//                 //       color: Colors.black,
//                 //       fontSize: 18,
//                 //       fontWeight: FontWeight.w500,
//                 //     ),
//                 //   ),
//                 //   contentPadding:
//                 //       EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//                 //   tileColor: Colors.white,
//                 //   shape: RoundedRectangleBorder(
//                 //     borderRadius: BorderRadius.circular(10),
//                 //   ),
//                 //   onTap: () {
//                 //     Navigator.pop(context);
//                 //   },
//                 // ),
//               ],
//             ),
//           ),
//         ),
//
//         body: Container(
//           decoration: BoxDecoration(
//             image: DecorationImage(
//               image: AssetImage("assets/images/god_img/home_bg.png"),
//               // Replace with your asset
//               fit: BoxFit.cover,
//             ),
//           ),
//           child: ListView.builder(
//             itemCount: aartiItems.length,
//             itemBuilder: (context, index) {
//               final item = aartiItems[index];
//               return Padding(
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
//                 child: GestureDetector(
//                   onTap: () {
//                     // if (item['title'] == "गणपती आरती") {
//                     //   Navigator.push(
//                     //     context,
//                     //     MaterialPageRoute(
//                     //       builder: (context) => GanpatiScreen(),
//                     //     ),
//                     //   );
//                     // }
//
//                     if (item['title'] == AppLocalizations.of(context)!.ganapatiaarti) {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => GaneshSplashScreen(),
//                         ),
//                       );
//                     }
//
//                     // if (item['title'] == "देवी दुर्गा आरती") {
//                     //   Navigator.push(
//                     //     context,
//                     //     MaterialPageRoute(
//                     //       builder: (context) => DurgaScreen(),
//                     //     ),
//                     //   );
//                     // }
//
//                     if (item['title'] ==   AppLocalizations.of(context)!.durgaaarti) {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => DurgaSplashScreen(),
//                         ),
//                       );
//                     }
//                     // if (item['title'] == "दत्ताची आरती") {
//                     //   Navigator.push(
//                     //     context,
//                     //     MaterialPageRoute(
//                     //       builder: (context) => DuttaScreen(),
//                     //     ),
//                     //   );
//                     // }
//
//                     if (item['title'] ==  AppLocalizations.of(context)!. duttaaarti ) {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => DuttaSplashScreen(),
//                         ),
//                       );
//                     }
//
//                     if (item['title'] == "शंकराची आरती") {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => ShivSplashScreen(),
//                         ),
//                       );
//                     }
//                     // if (item['title'] == "शंकराची आरती") {
//                     //   Navigator.push(
//                     //     context,
//                     //     MaterialPageRoute(
//                     //       builder: (context) => ShivScreen(),
//                     //     ),
//                     //   );
//                     // }
//                     // if (item['title'] == "विठ्ठल आरती") {
//                     //   Navigator.push(
//                     //     context,
//                     //     MaterialPageRoute(
//                     //       builder: (context) => VitthalScreen(),
//                     //     ),
//                     //   );
//                     // }
//
//                     if (item['title'] ==  AppLocalizations.of(context)!. vitthalaarti  ) {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => VitthalSplashScreen(),
//                         ),
//                       );
//                     }
//                     // if (item['title'] == "घालीन लोटांगण") {
//                     //   Navigator.push(
//                     //     context,
//                     //     MaterialPageRoute(
//                     //       builder: (context) => GhalinScreen(),
//                     //     ),
//                     //   );
//                     // }
//                     if (item['title'] ==  AppLocalizations.of(context)!. ghalinaarti ) {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => GhalinSplashScreen(),
//                         ),
//                       );
//                     }
//                     if (item['title'] ==   AppLocalizations.of(context)!. allaarties ) {
//                       try {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => AllScreen(
//                               aartiScreens: [
//                                 GanpatiScreen(),
//                                 DurgaScreen(),
//                                 DuttaScreen(),
//                                 ShivScreen(),
//                                 VitthalScreen(),
//                                 GhalinScreen(),
//                               ],
//                             ),
//                           ),
//                         );
//                       } catch (e) {
//                         print("Error navigating to AllScreen: $e");
//                       }
//                     }
//
//                     // Handle tap event here
//                   },
//                   child: Container(
//                     height: 80,
//                     decoration: BoxDecoration(
//                       color: item['color'],
//                       borderRadius: BorderRadius.only(
//                         topRight: Radius.circular(
//                             40), // Curve for the top-left corner
//                         bottomLeft: Radius.circular(40),
//                         bottomRight: Radius.circular(10),
//                         topLeft: Radius.circular(
//                             10), // Curve for the bottom-right corner)
//                       ),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.grey.withOpacity(0.5),
//                           blurRadius: 5,
//                           offset: Offset(0, 3),
//                         ),
//                       ],
//                     ),
//                     child: Row(
//                       children: [
//                         if (item['image'] != null &&
//                             item['image'].isNotEmpty) // Check if image exists
//                           Padding(
//                             padding:
//                                 const EdgeInsets.symmetric(horizontal: 12.0),
//                             child: Image.asset(
//                               item['image'], // Use asset image
//                               height: 60,
//                               width: 60,
//                               fit: BoxFit.fitHeight,
//                             ),
//                           ),
//                         Text(
//                           item['title'],
//                           style: TextStyle(
//                             color: item['textColor'],
//                             // Use the specific text color
//                             fontWeight: FontWeight.bold,
//                             fontSize: 18,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
//
//
//

// import 'package:aarti_mantra/features/home_screen/setting_screen.dart';
// import 'package:aarti_mantra/features/splash_screen/splash_screens/durga_splash.dart';
// import 'package:aarti_mantra/features/splash_screen/splash_screens/shiv_splash.dart';
// import 'package:aarti_mantra/features/splash_screen/splash_screens/vitthal_splash.dart';
// import 'package:flutter/material.dart';
// import 'package:google_mobile_ads/google_mobile_ads.dart';
// import '../aarti_screen/all_screen.dart';
// import '../aarti_screen/durga_screen.dart';
// import '../aarti_screen/dutta_screen.dart';
// import '../aarti_screen/ganesh_screen.dart';
// import '../aarti_screen/ghalin_screen.dart';
// import '../aarti_screen/shiv_screen.dart';
// import '../aarti_screen/vitthal_screen.dart';
// import '../splash_screen/splash_screens/dutta_splash.dart';
// import '../splash_screen/splash_screens/galin_splash.dart';
// import '../splash_screen/splash_screens/ganesh_splash.dart';
// import 'about_screen.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
//
//
// class AartiSangrahScreen extends StatefulWidget {
//   @override
//   State<AartiSangrahScreen> createState() => _AartiSangrahScreenState();
// }
//
// class _AartiSangrahScreenState extends State<AartiSangrahScreen> {
//   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
//   late BannerAd _bannerAd;
//   bool _isBannerAdLoaded = false;
//
//
//   @override
//   void initState() {
//     super.initState();
//     _loadBannerAd();
//   }
//
//   void _loadBannerAd() {
//     _bannerAd = BannerAd(
//       adUnitId: '<ca-app-pub-3940256099942544/6300978111>',
//       size: AdSize.banner,
//       request: AdRequest(),
//       listener: BannerAdListener(
//         onAdLoaded: (_) {
//           setState(() {
//             _isBannerAdLoaded = true;
//           });
//         },
//         onAdFailedToLoad: (_, error) {
//           print("Banner ad failed to load: $error");
//         },
//       ),
//     );
//     _bannerAd.load();
//   }
//
//   @override
//   void dispose() {
//     _bannerAd.dispose();
//     super.dispose();
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     // Aarti items with their respective navigation routes
//     final List<Map<String, dynamic>> aartiItems = [
//       {
//         "title": AppLocalizations.of(context)!.ganapatiaarti,
//         "color": Color(0xFF7C1025),
//         "image": "assets/images/god_img/G.png",
//         "textColor": Colors.white,
//         "route": GaneshSplashScreen(), // Associated screen
//       },
//       {
//         "title": AppLocalizations.of(context)!.durgaaarti,
//         "color": Color(0xFFFFF8E5),
//         "image": "assets/images/god_img/Dug.png",
//         "textColor": Colors.black,
//         "route": DurgaSplashScreen(),
//       },
//       {
//         "title": AppLocalizations.of(context)!.duttaaarti,
//         "color": Color(0xFF47914E),
//         "image": "assets/images/god_img/D.png",
//         "textColor": Colors.white,
//         "route": DuttaSplashScreen(),
//       },
//       {
//         "title": "shiv arati",
//         "color": Color(0xFF1D477B),
//         "image": "assets/images/god_img/S.png",
//         "textColor": Colors.white,
//         "route": ShivSplashScreen(),
//       },
//       {
//         "title": AppLocalizations.of(context)!.vitthalaarti,
//         "color": Color(0xFFECC133),
//         "image": "assets/images/god_img/V.png",
//         "textColor": Colors.black,
//         "route": VitthalSplashScreen(),
//       },
//       {
//         "title": AppLocalizations.of(context)!.ghalinaarti,
//         "color": Color(0xFFFF6F00),
//         "image": "assets/images/god_img/om1.png",
//         "textColor": Colors.white,
//         "route": GhalinSplashScreen(),
//       },
//       {
//         "title": AppLocalizations.of(context)!.allaarties,
//         "color": Color(0xFFADD8E6),
//         "image": "assets/images/god_img/nam.png",
//         "textColor": Colors.black,
//         "route": AllScreen(
//           aartiScreens: [
//             GanpatiScreen(),
//             DurgaScreen(),
//             DuttaScreen(),
//             ShivScreen(),
//             VitthalScreen(),
//             GhalinScreen(),
//           ],
//         ),
//       },
//     ];
//     return SafeArea(
//       child: Scaffold(
//         key: _scaffoldKey,
//         appBar: AppBar(
//           backgroundColor: Colors.white,
//           toolbarHeight: 70,
//           elevation: 0,
//           centerTitle: true,
//           title: Text(
//             AppLocalizations.of(context)!.aartisangrah,
//             style: TextStyle(
//               color: Colors.orange.shade800,
//               fontWeight: FontWeight.bold,
//               fontSize: 24,
//             ),
//           ),
//           leading: IconButton(
//             icon: Icon(Icons.menu, color: Colors.black),
//             onPressed: () {
//               _scaffoldKey.currentState?.openDrawer();
//             },
//           ),
//         ),
//         drawer: _buildDrawer(),
//         body: Container(
//           decoration: BoxDecoration(
//             image: DecorationImage(
//               image: AssetImage("assets/images/god_img/home_bg.png"),
//               fit: BoxFit.cover,
//             ),
//           ),
//           child: Column(
//             children: [
//               Expanded(
//                 child: ListView.builder(
//                   itemCount: aartiItems.length,
//                   itemBuilder: (context, index) {
//                     final item = aartiItems[index];
//                     return Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
//                       child: GestureDetector(
//                         onTap: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => item['route'],
//                             ),
//                           );
//                         },
//                         child: _buildAartiCard(item),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//               // Banner Ad at the bottom
//               if (_isBannerAdLoaded)
//                 Container(
//                   alignment: Alignment.center,
//                   child: SizedBox(
//                     height: 50,
//                     child: AdWidget(ad: _bannerAd),
//                   ),
//                 ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   // Drawer Widget
//   Widget _buildDrawer() {
//     return Drawer(
//       child: Container(
//         color: Color(0xFFf5f5f5),
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: <Widget>[
//             DrawerHeader(
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.only(
//                   bottomLeft: Radius.circular(30),
//                   bottomRight: Radius.circular(30),
//                 ),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey.withOpacity(0.5),
//                     blurRadius: 5,
//                     offset: Offset(0, 3),
//                   ),
//                 ],
//               ),
//               child: Column(
//                 children: [
//                   CircleAvatar(
//                     radius: 40,
//                     backgroundImage: AssetImage("assets/images/god_img/dev2.webp"),
//                   ),
//                   SizedBox(height: 10),
//                   Text(
//                     AppLocalizations.of(context)!.aartisangrah,
//                     style: TextStyle(
//                       fontSize: 22,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.orange.shade800,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             _buildDrawerItem(Icons.home, AppLocalizations.of(context)!.home, AartiSangrahScreen()),
//             _buildDrawerItem(Icons.info, AppLocalizations.of(context)!.about, AboutScreen()),
//             _buildDrawerItem(Icons.settings, AppLocalizations.of(context)!.setting, LanguageSettingsScreen()),
//           ],
//         ),
//       ),
//     );
//   }
//
//   // Drawer ListTile
//   Widget _buildDrawerItem(IconData icon, String title, Widget screen) {
//     return ListTile(
//       leading: Icon(icon, color: Colors.orange.shade700),
//       title: Text(
//         title,
//         style: TextStyle(
//           color: Colors.black,
//           fontSize: 18,
//           fontWeight: FontWeight.w500,
//         ),
//       ),
//       contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//       tileColor: Colors.white,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//       onTap: () {
//         Navigator.push(
//           context,
//           MaterialPageRoute(builder: (context) => screen),
//         );
//       },
//     );
//   }
//
//   // Build Aarti Card
//   Widget _buildAartiCard(Map<String, dynamic> item) {
//     return Container(
//       height: 80,
//       decoration: BoxDecoration(
//         color: item['color'],
//         borderRadius: BorderRadius.only(
//           topRight: Radius.circular(40),
//           bottomLeft: Radius.circular(40),
//           bottomRight: Radius.circular(10),
//           topLeft: Radius.circular(10),
//         ),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.5),
//             blurRadius: 5,
//             offset: Offset(0, 3),
//           ),
//         ],
//       ),
//       child: Row(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(10),
//             child: Image.asset(
//               item['image'],
//               height: 50,
//             ),
//           ),
//           Text(
//             item['title'],
//             style: TextStyle(
//               fontSize: 18,
//               fontWeight: FontWeight.w500,
//               color: item['textColor'],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:aarti_mantra/features/home_screen/setting_screen.dart';
import 'package:aarti_mantra/features/splash_screen/splash_screens/durga_splash.dart';
import 'package:aarti_mantra/features/splash_screen/splash_screens/shiv_splash.dart';
import 'package:aarti_mantra/features/splash_screen/splash_screens/vitthal_splash.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
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
import 'about_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class AartiSangrahScreen extends StatefulWidget {
  @override
  State<AartiSangrahScreen> createState() => _AartiSangrahScreenState();
}

class _AartiSangrahScreenState extends State<AartiSangrahScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  late BannerAd _bannerAd;
  bool _isBannerAdLoaded = false;

  @override
  void initState() {
    super.initState();
    _loadBannerAd();
  }

  void _loadBannerAd() {
    _bannerAd = BannerAd(
      adUnitId: '<ca-app-pub-6500825128649054/3428587073>',
      size: AdSize.banner,
      request: AdRequest(),
      listener: BannerAdListener(
        onAdLoaded: (_) {
          setState(() {
            _isBannerAdLoaded = true;
          });
        },
        onAdFailedToLoad: (_, error) {
          print("Banner ad failed to load: $error");
        },
      ),
    );
    _bannerAd.load();
  }

  @override
  void dispose() {
    _bannerAd.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Aarti items with their respective navigation routes
    final List<Map<String, dynamic>> aartiItems = [
      {
        "title": AppLocalizations.of(context)!.ganapatiaarti,
        "color": Color(0xFF7C1025),
        "image": "assets/images/god_img/G.png",
        "textColor": Colors.white,
        "route": GaneshSplashScreen(), // Associated screen
      },
      {
        "title": AppLocalizations.of(context)!.durgaaarti,
        "color": Color(0xFFFFF8E5),
        "image": "assets/images/god_img/Dug.png",
        "textColor": Colors.black,
        "route": DurgaSplashScreen(),
      },
      {
        "title": AppLocalizations.of(context)!.duttaaarti,
        "color": Color(0xFF47914E),
        "image": "assets/images/god_img/D.png",
        "textColor": Colors.white,
        "route": DuttaSplashScreen(),
      },
      {
        "title": "shiv arati",
        "color": Color(0xFF1D477B),
        "image": "assets/images/god_img/S.png",
        "textColor": Colors.white,
        "route": ShivSplashScreen(),
      },
      {
        "title": AppLocalizations.of(context)!.vitthalaarti,
        "color": Color(0xFFECC133),
        "image": "assets/images/god_img/V.png",
        "textColor": Colors.black,
        "route": VitthalSplashScreen(),
      },
      {
        "title": AppLocalizations.of(context)!.ghalinaarti,
        "color": Color(0xFFFF6F00),
        "image": "assets/images/god_img/om1.png",
        "textColor": Colors.white,
        "route": GhalinSplashScreen(),
      },
      {
        "title": AppLocalizations.of(context)!.allaarties,
        "color": Color(0xFFADD8E6),
        "image": "assets/images/god_img/nam.png",
        "textColor": Colors.black,
        "route": AllScreen(
          aartiScreens: [
            GanpatiScreen(),
            DurgaScreen(),
            DuttaScreen(),
            ShivScreen(),
            VitthalScreen(),
            GhalinScreen(),
          ],
        ),
      },
    ];

    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 70,
          elevation: 0,
          centerTitle: true,
          title: Text(
            AppLocalizations.of(context)!.aartisangrah,
            style: TextStyle(
              color: Colors.orange.shade800,
              fontWeight: FontWeight.bold,
              fontSize: MediaQuery.of(context).size.width * 0.07, // Dynamic font size based on screen width
            ),
          ),
          leading: IconButton(
            icon: Icon(Icons.menu, color: Colors.black),
            onPressed: () {
              _scaffoldKey.currentState?.openDrawer();
            },
          ),
        ),
        drawer: _buildDrawer(),
        body: LayoutBuilder(
          builder: (context, constraints) {
            double screenWidth = constraints.maxWidth;
            double screenHeight = constraints.maxHeight;

            return Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/god_img/home_bg.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: aartiItems.length,
                      itemBuilder: (context, index) {
                        final item = aartiItems[index];
                        return Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.04, // Dynamic horizontal padding
                            vertical: screenHeight * 0.02, // Dynamic vertical padding
                          ),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => item['route'],
                                ),
                              );
                            },
                            child: _buildAartiCard(item, screenWidth, screenHeight),
                          ),
                        );
                      },
                    ),
                  ),
                  // Banner Ad at the bottom
                  if (_isBannerAdLoaded)
                    Container(
                      alignment: Alignment.center,
                      child: SizedBox(
                        height: 50,
                        width: screenWidth, // Dynamic width for ad
                        child: AdWidget(ad: _bannerAd),
                      ),
                    ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  // Drawer Widget
  Widget _buildDrawer() {
    return Drawer(
      child: Container(
        color: Color(0xFFf5f5f5),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage("assets/images/god_img/dev2.webp"),
                  ),
                  SizedBox(height: 10),
                  Text(
                    AppLocalizations.of(context)!.aartisangrah,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange.shade800,
                    ),
                  ),
                ],
              ),
            ),
            _buildDrawerItem(Icons.home, AppLocalizations.of(context)!.home, AartiSangrahScreen()),
            _buildDrawerItem(Icons.info, AppLocalizations.of(context)!.about, AboutScreen()),
            _buildDrawerItem(Icons.settings, AppLocalizations.of(context)!.setting, LanguageSettingsScreen()),
          ],
        ),
      ),
    );
  }

  // Drawer ListTile
  Widget _buildDrawerItem(IconData icon, String title, Widget screen) {
    return ListTile(
      leading: Icon(icon, color: Colors.orange.shade700),
      title: Text(
        title,
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
      contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      tileColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen),
        );
      },
    );
  }

  // Build Aarti Card with dynamic sizing
  Widget _buildAartiCard(Map<String, dynamic> item, double screenWidth, double screenHeight) {
    return Container(
      height: screenHeight * 0.1, // Dynamic height for each card
      decoration: BoxDecoration(
        color: item['color'],
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(40),
          bottomLeft: Radius.circular(40),
          bottomRight: Radius.circular(10),
          topLeft: Radius.circular(10),
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
          Padding(
            padding: EdgeInsets.all(screenWidth * 0.05), // Dynamic padding
            child: Image.asset(
              item['image'],
              height: screenHeight * 0.07, // Dynamic image height
            ),
          ),
          Text(
            item['title'],
            style: TextStyle(
              fontSize: screenWidth * 0.05, // Dynamic text size based on screen width
              fontWeight: FontWeight.w500,
              color: item['textColor'],
            ),
          ),
        ],
      ),
    );
  }
}
