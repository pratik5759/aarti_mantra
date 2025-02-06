//
// import 'package:aarti_mantra/features/home_screen/homescreen.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
// import 'l10n/app_localization.dart';
//
//
//
// void main()async {
//   WidgetsFlutterBinding.ensureInitialized();
//   String defaultLocale = await _getSavedLocale(); // Load saved language
//   runApp(MyApp(locale: Locale(defaultLocale)));
//
//  }
//
// class MyApp extends StatefulWidget {
//   final Locale locale;
//   MyApp({required this.locale});
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   // This widget is the root of your application.
//   Locale _locale = Locale('en'); // Default Language
//   @override
//
//   void initState() {
//     super.initState();
//     _locale = widget.locale;
//   }
//
//   void setLocale(Locale locale) {
//     setState(() {
//       _locale = locale;
//     });
//   }
//   @override
//
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//
//       supportedLocales: [
//         Locale('en', ''), // English
//         Locale('hi', ''), // Hindi
//         Locale('mr', ''), // Marathi
//       ],
//       localizationsDelegates: [
//         GlobalMaterialLocalizations.delegate,
//         GlobalWidgetsLocalizations.delegate,
//         AppLocalizations.delegate, // Add this for localization
//       ],
//
//       localeResolutionCallback: (locale, supportedLocales) {
//         if (locale != null) {
//           for (var supportedLocale in supportedLocales) {
//             if (supportedLocale.languageCode == locale.languageCode) {
//               return supportedLocale;
//             }
//           }
//         }
//         return supportedLocales.first; // Default locale
//       },
//       theme: ThemeData(
//
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: AartiSangrahScreen(),
//     );
//   }
// }
// // Load saved locale from SharedPreferences
// Future<String> _getSavedLocale() async {
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   return prefs.getString('selected_language') ?? 'en'; // Default to English
// }
//
//

//
// import 'package:aarti_mantra/features/home_screen/homescreen.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'l10n/app_localization.dart';
//
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   String defaultLocale = await _getSavedLocale(); // Load saved language
//   runApp(MyApp(locale: Locale(defaultLocale)));
// }
//
// class MyApp extends StatefulWidget {
//   final Locale locale;
//   static final GlobalKey<_MyAppState> myAppKey = GlobalKey<_MyAppState>();
//
//   MyApp({required this.locale}) : super(key: myAppKey);
//
//   @override
//   State<MyApp> createState() => _MyAppState();
//
//   // Static method to update locale from anywhere
//   static void setLocale(BuildContext context, Locale locale) {
//     myAppKey.currentState?.setLocale(locale);
//   }
// }
//
// class _MyAppState extends State<MyApp> {
//   Locale _locale = Locale('en'); // Default Language
//
//   @override
//   void initState() {
//     super.initState();
//     _locale = widget.locale;
//   }
//
//   void setLocale(Locale locale) {
//     setState(() {
//       _locale = locale;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       locale: _locale, // Set locale here
//       supportedLocales: [
//         Locale('en', ''), // English
//         Locale('hi', ''), // Hindi
//         Locale('mr', ''), // Marathi
//       ],
//       localizationsDelegates: [
//         GlobalMaterialLocalizations.delegate, // Correct single delegate
//         GlobalWidgetsLocalizations.delegate,  // Add widgets delegate
//         AppLocalizations.delegate, // Add your custom localization delegate
//         GlobalCupertinoLocalizations.delegate, // Add Cupertino delegate for iOS support
//       ],
//       localeResolutionCallback: (locale, supportedLocales) {
//         if (locale != null) {
//           for (var supportedLocale in supportedLocales) {
//             if (supportedLocale.languageCode == locale.languageCode) {
//               return supportedLocale;
//             }
//           }
//         }
//         return supportedLocales.first; // Default locale
//       },
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: AartiSangrahScreen(),
//     );
//   }
// }
//
// // Load saved locale from SharedPreferences
// Future<String> _getSavedLocale() async {
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   return prefs.getString('selected_language') ?? 'en'; // Default to English
// }

//
// import 'package:aarti_mantra/features/home_screen/homescreen.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'l10n/app_localization.dart';
//
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   String defaultLocale = await _getSavedLocale(); // Load saved language
//   runApp(MyApp(locale: Locale(defaultLocale)));
// }
//
// class MyApp extends StatefulWidget {
//   final Locale locale;
//   static final GlobalKey<_MyAppState> myAppKey = GlobalKey<_MyAppState>();
//
//   MyApp({required this.locale}) : super(key: myAppKey);
//
//   @override
//   State<MyApp> createState() => _MyAppState();
//
//   // Static method to update locale from anywhere
//   static void setLocale(BuildContext context, Locale locale) {
//     myAppKey.currentState?.setLocale(locale);
//   }
// }
//
// class _MyAppState extends State<MyApp> {
//   Locale _locale = Locale('en'); // Default Language
//
//   @override
//   void initState() {
//     super.initState();
//     _locale = widget.locale;
//   }
//
//   void setLocale(Locale locale) {
//     setState(() {
//       _locale = locale;
//     });
//     _saveLocale(locale.languageCode);  // Save the selected language to SharedPreferences
//   }
//
//   // Save the selected language to SharedPreferences
//   Future<void> _saveLocale(String languageCode) async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     await prefs.setString('selected_language', languageCode);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       locale: _locale, // Set locale here
//       supportedLocales: [
//         Locale('en', ''), // English
//         Locale('hi', ''), // Hindi
//         Locale('mr', ''), // Marathi
//       ],
//       localizationsDelegates: [
//         GlobalMaterialLocalizations.delegate, // Correct single delegate
//         GlobalWidgetsLocalizations.delegate,  // Add widgets delegate
//         AppLocalizations.delegate, // Add your custom localization delegate
//         GlobalCupertinoLocalizations.delegate, // Add Cupertino delegate for iOS support
//       ],
//       localeResolutionCallback: (locale, supportedLocales) {
//         if (locale != null) {
//           for (var supportedLocale in supportedLocales) {
//             if (supportedLocale.languageCode == locale.languageCode) {
//               return supportedLocale;
//             }
//           }
//         }
//         return supportedLocales.first; // Default locale
//       },
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: AartiSangrahScreen(),
//     );
//   }
// }
//
// // Load saved locale from SharedPreferences
// Future<String> _getSavedLocale() async {
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   return prefs.getString('selected_language') ?? 'en'; // Default to English
// }



// import 'package:aarti_mantra/features/home_screen/homescreen.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
//
//
//
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   String defaultLocale = await _getSavedLocale(); // Load saved language
//   runApp(MyApp(locale: Locale(defaultLocale)));
// }
//
// class MyApp extends StatefulWidget {
//   final Locale locale;
//   static final GlobalKey<_MyAppState> myAppKey = GlobalKey<_MyAppState>();
//
//   MyApp({required this.locale}) : super(key: myAppKey);
//
//   @override
//   State<MyApp> createState() => _MyAppState();
//
//   // Static method to update locale from anywhere
//   // static void setLocale(BuildContext context, Locale locale) {
//   //   myAppKey.currentState?.setLocale(locale);
//   // }
// }
//
// class _MyAppState extends State<MyApp> {
//   // Locale _locale = Locale('en'); // Default Language
//
//   @override
//   void initState() {
//     super.initState();
//     //_locale = widget.locale;
//   }
//
//   // void setLocale(Locale locale) {
//   //   setState(() {
//   //     _locale = locale;
//   //   });
//   //   _saveLocale(locale.languageCode);  // Save the selected language to SharedPreferences
//   // }
//
//   // Save the selected language to SharedPreferences
//   // Future<void> _saveLocale(String languageCode) async {
//   //   SharedPreferences prefs = await SharedPreferences.getInstance();
//   //   await prefs.setString('selected_language', languageCode);
//   // }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//     //  locale: _locale, // Set locale here
//       supportedLocales: [
//         Locale('en', ''), // English
//         Locale('hi', ''), // Hindi
//         Locale('mr', ''), // Marathi
//       ],
//       locale:Locale('en'),
//
//       localizationsDelegates: [
//         GlobalMaterialLocalizations.delegate, // Correct single delegate
//         GlobalWidgetsLocalizations.delegate,  // Add widgets delegate
//         AppLocalizations.delegate, // Add your custom localization delegate
//         GlobalCupertinoLocalizations.delegate, // Add Cupertino delegate for iOS support
//       ],
//       localeResolutionCallback: (locale, supportedLocales) {
//         if (locale != null) {
//           for (var supportedLocale in supportedLocales) {
//             if (supportedLocale.languageCode == locale.languageCode) {
//               return supportedLocale;
//             }
//           }
//         }
//         return supportedLocales.first; // Default locale
//       },
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: AartiSangrahScreen(),
//     );
//   }
// }
//
// // Load saved locale from SharedPreferences
// Future<String> _getSavedLocale() async {
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   return prefs.getString('selected_language') ?? 'en'; // Default to English
// }



import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'features/home_screen/homescreen.dart';
import 'features/splash_screen/splashh_screen.dart';  // Correct import

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await MobileAds.instance.initialize();

  String defaultLocale = await _getSavedLocale(); // Load saved language
  runApp(MyApp(locale: Locale(defaultLocale)));
}

class MyApp extends StatefulWidget {
  final Locale locale;
  static final GlobalKey<_MyAppState> myAppKey = GlobalKey<_MyAppState>();

  MyApp({required this.locale}) : super(key: myAppKey);

  @override
  State<MyApp> createState() => _MyAppState();

  // Static method to update locale from anywhere
  static void setLocale(BuildContext context, Locale locale) {
    myAppKey.currentState?.setLocale(locale);
  }
}

class _MyAppState extends State<MyApp> {
  Locale _locale;

  _MyAppState() : _locale = Locale('en'); // Default language

  @override
  void initState() {
    super.initState();
    _locale = widget.locale;
  }

  void setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
    _saveLocale(locale.languageCode);  // Save the selected language to SharedPreferences
  }

  Future<void> _saveLocale(String languageCode) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('selected_language', languageCode);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Flutter Demo',
      supportedLocales: [
        Locale('en', ''),
        Locale('hi', ''),
        Locale('mr', ''),
      ],
      locale: _locale,  // Set locale here

      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        AppLocalizations.delegate, // Use the generated localization delegate
        GlobalCupertinoLocalizations.delegate,
      ],
      localeResolutionCallback: (locale, supportedLocales) {
        if (locale != null) {
          for (var supportedLocale in supportedLocales) {
            if (supportedLocale.languageCode == locale.languageCode) {
              return supportedLocale;
            }
          }
        }
        return supportedLocales.first;  // Default locale
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: AartiSangrahScreen(), // Set the splash screen as the starting screen
      routes: {
        '/home': (context) => AartiSangrahScreen(),
      },
    );
  }
}

// Load saved locale from SharedPreferences
Future<String> _getSavedLocale() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString('selected_language') ?? 'en'; // Default to English
}
