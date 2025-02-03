// // import 'package:flutter/material.dart';
// // import 'package:shared_preferences/shared_preferences.dart';
// //
// // import '../../l10n/app_localization.dart'; // Import generated localization class
// //
// // class LanguageSettingsScreen extends StatefulWidget {
// //   @override
// //   _LanguageSettingsScreenState createState() => _LanguageSettingsScreenState();
// // }
// //
// // class _LanguageSettingsScreenState extends State<LanguageSettingsScreen> {
// //   String _selectedLanguage = 'Marathi'; // Default Language
// //
// //   // Available languages
// //   final List<String> _languages = ['Marathi', 'Hindi', 'English'];
// //
// //   @override
// //   void initState() {
// //     super.initState();
// //     _loadSelectedLanguage();
// //   }
// //
// //   // Load the saved language preference
// //   Future<void> _loadSelectedLanguage() async {
// //     SharedPreferences prefs = await SharedPreferences.getInstance();
// //     setState(() {
// //       _selectedLanguage = prefs.getString('selected_language') ?? 'Marathi';
// //     });
// //   }
// //
// //   // Save the selected language
// //   Future<void> _saveSelectedLanguage(String language) async {
// //     SharedPreferences prefs = await SharedPreferences.getInstance();
// //     await prefs.setString('selected_language', language);
// //     setState(() {
// //       _selectedLanguage = language;
// //     });
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text(AppLocalizations.of(context)!.languageSettings),
// //         backgroundColor: Colors.orange,
// //       ),
// //       body: Padding(
// //         padding: const EdgeInsets.all(16.0),
// //         child: Column(
// //           crossAxisAlignment: CrossAxisAlignment.start,
// //           children: [
// //             Text(
// //               AppLocalizations.of(context)!.selectLanguage,
// //               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
// //             ),
// //             SizedBox(height: 10),
// //
// //             // Language Selection List
// //             Column(
// //               children: _languages.map((language) {
// //                 return RadioListTile<String>(
// //                   title: Text(AppLocalizations.of(context)!.languageMarathi), // Adjust dynamically
// //                   value: language,
// //                   groupValue: _selectedLanguage,
// //                   activeColor: Colors.orange,
// //                   onChanged: (String? value) {
// //                     if (value != null) {
// //                       _saveSelectedLanguage(value);
// //                     }
// //                   },
// //                 );
// //               }).toList(),
// //             ),
// //
// //             SizedBox(height: 20),
// //
// //             Center(
// //               child: ElevatedButton(
// //                 style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
// //                 onPressed: () {
// //                   Navigator.pop(context);
// //                 },
// //                 child: Text(AppLocalizations.of(context)!.saveExit, style: TextStyle(color: Colors.white)),
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
//
//
// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import '../../l10n/app_localization.dart'; // Import generated localization class
//
// class LanguageSettingsScreen extends StatefulWidget {
//   @override
//   _LanguageSettingsScreenState createState() => _LanguageSettingsScreenState();
// }
//
// class _LanguageSettingsScreenState extends State<LanguageSettingsScreen> {
//   String _selectedLanguage = 'Marathi'; // Default Language
//
//   // Available languages
//   final List<String> _languages = ['Marathi', 'Hindi', 'English'];
//
//   @override
//   void initState() {
//     super.initState();
//     _loadSelectedLanguage();
//   }
//
//   // Load the saved language preference
//   Future<void> _loadSelectedLanguage() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     setState(() {
//       _selectedLanguage = prefs.getString('selected_language') ?? 'Marathi';
//     });
//   }
//
//   // Save the selected language
//   Future<void> _saveSelectedLanguage(String language) async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     await prefs.setString('selected_language', language);
//     setState(() {
//       _selectedLanguage = language;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(AppLocalizations.of(context)!.languageSettings),
//         backgroundColor: Colors.orange,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               AppLocalizations.of(context)!.selectLanguage,
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 10),
//
//             // Language Selection List
//             Column(
//               children: _languages.map((language) {
//                 return RadioListTile<String>(
//                   title: Text(
//                     language == 'Marathi'
//                         ? AppLocalizations.of(context)!.languageMarathi
//                         : language == 'Hindi'
//                         ? AppLocalizations.of(context)!.languageHindi
//                         : AppLocalizations.of(context)!.languageEnglish,
//                   ),
//                   value: language,
//                   groupValue: _selectedLanguage,
//                   activeColor: Colors.orange,
//                   onChanged: (String? value) {
//                     if (value != null) {
//                       _saveSelectedLanguage(value);
//                     }
//                   },
//                 );
//               }).toList(),
//             ),
//
//             SizedBox(height: 20),
//
//             Center(
//               child: ElevatedButton(
//                 style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
//                 onPressed: () {
//                   Navigator.pop(context);
//                 },
//                 child: Text(
//                   AppLocalizations.of(context)!.saveExit,
//                   style: TextStyle(color: Colors.white),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//


//
// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import '../../l10n/app_localization.dart';
// import '../../main.dart'; // Import generated localization class
//
// class LanguageSettingsScreen extends StatefulWidget {
//   @override
//   _LanguageSettingsScreenState createState() => _LanguageSettingsScreenState();
// }
//
// class _LanguageSettingsScreenState extends State<LanguageSettingsScreen> {
//   String _selectedLanguage = 'en'; // Default to English
//   final Map<String, String> _languageMap = {
//     'mr': 'language_marathi',
//     'hi': 'language_hindi',
//     'en': 'language_english',
//   };
//
//   @override
//   void initState() {
//     super.initState();
//     _loadSelectedLanguage();
//   }
//
//   Future<void> _loadSelectedLanguage() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     setState(() {
//       _selectedLanguage = prefs.getString('selected_language') ?? 'en';
//     });
//   }
//
//   Future<void> _saveSelectedLanguage(String languageCode) async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     await prefs.setString('selected_language', languageCode);
//     setState(() {
//       _selectedLanguage = languageCode;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(AppLocalizations.of(context)!.languageSettings),
//         backgroundColor: Colors.orange,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               AppLocalizations.of(context)!.selectLanguage,
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 10),
//
//             // Language Selection List
//             // Column(
//             //   children: _languageMap.keys.map((langCode) {
//             //     return RadioListTile<String>(
//             //       title: Text(AppLocalizations.of(context)!.languageMarathi // Example for Marathi
//             //       ),
//             //       value: langCode,
//             //       groupValue: _selectedLanguage,
//             //       activeColor: Colors.orange,
//             //       onChanged: (String? value) {
//             //         if (value != null) {
//             //           _saveSelectedLanguage(value);
//             //           MyApp.setLocale(context, Locale(value));
//             //         }
//             //       },
//             //     );
//             //   }).toList(),
//             // ),
//             Column(
//               children: _languageMap.entries.map((entry) {
//                 return RadioListTile<String>(
//                   title: Text(
//                     entry.key == 'mr'
//                         ? AppLocalizations.of(context)!.languageMarathi
//                         : entry.key == 'hi'
//                         ? AppLocalizations.of(context)!.languageHindi
//                         : AppLocalizations.of(context)!.languageEnglish,
//                   ),
//                   value: entry.key,
//                   groupValue: _selectedLanguage,
//                   activeColor: Colors.orange,
//                   onChanged: (String? value) {
//                     if (value != null) {
//                       _saveSelectedLanguage(value);
//                       MyApp.setLocale(context, Locale(value)); // ❌ This still needs fixing
//                     }
//                   },
//                 );
//               }).toList(),
//             ),
//
//             SizedBox(height: 20),
//
//             Center(
//               child: ElevatedButton(
//                 style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
//                 onPressed: () {
//                   Navigator.pop(context);
//                 },
//                 child: Text(
//                   AppLocalizations.of(context)!.saveExit,
//                   style: TextStyle(color: Colors.white),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//  import '../../main.dart'; // Import main app file
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
//
//
// class LanguageSettingsScreen extends StatefulWidget {
//   @override
//   _LanguageSettingsScreenState createState() => _LanguageSettingsScreenState();
// }
//
// class _LanguageSettingsScreenState extends State<LanguageSettingsScreen> {
//   String _selectedLanguage = 'en'; // Default to English
//
//   @override
//   void initState() {
//     super.initState();
//     _loadSelectedLanguage();
//   }
//
//   Future<void> _loadSelectedLanguage() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     setState(() {
//       _selectedLanguage = prefs.getString('selected_language') ?? 'en';
//     });
//   }
//
//   Future<void> _saveSelectedLanguage(String languageCode) async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     await prefs.setString('selected_language', languageCode);
//     setState(() {
//       _selectedLanguage = languageCode;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(AppLocalizations.of(context)!.languageSettings),
//         backgroundColor: Colors.orange,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               AppLocalizations.of(context)!.selectLanguage,
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 10),
//
//             // Language Selection List
//             // Column(
//             //   children: ['mr', 'hi', 'en'].map((langCode) {
//             //     return RadioListTile<String>(
//             //       title: Text(
//             //         langCode == 'mr'
//             //             ? AppLocalizations.of(context)!.languageMarathi
//             //             : langCode == 'hi'
//             //             ? AppLocalizations.of(context)!.languageHindi
//             //             : AppLocalizations.of(context)!.languageEnglish,
//             //       ),
//             //       value: langCode,
//             //       groupValue: _selectedLanguage,
//             //       activeColor: Colors.orange,
//             //       onChanged: (String? value) {
//             //         if (value != null) {
//             //           _saveSelectedLanguage(value);
//             //           MyApp.setLocale(context, Locale(value));
//             //         }
//             //       },
//             //     );
//             //   }).toList(),
//             // ),
//
//             // Column(
//             //   children: ['mr', 'hi', 'en'].map((langCode) {
//             //     return RadioListTile<String>(
//             //       title: Text(
//             //         langCode == 'mr'
//             //             ? AppLocalizations.of(context)!.languageMarathi
//             //             : langCode == 'hi'
//             //             ? AppLocalizations.of(context)!.languageHindi
//             //             : AppLocalizations.of(context)!.languageEnglish,
//             //       ),
//             //       value: langCode,
//             //       groupValue: _selectedLanguage,
//             //       activeColor: Colors.orange,
//             //       onChanged: (String? value) {
//             //         if (value != null) {
//             //           _saveSelectedLanguage(value);
//             //           MyApp.setLocale(context, Locale(value));
//             //           setState(() {
//             //             _selectedLanguage = value; // Update the selected language in UI
//             //
//             //           }); // Force UI rebuild
//             //         }
//             //       },
//             //     );
//             //   }).toList(),
//             // ),
//
//             SizedBox(height: 20),
//
//             Center(
//               child: ElevatedButton(
//                 style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
//                 onPressed: () {
//                   Navigator.pop(context);
//                 },
//                 child: Text(
//                   AppLocalizations.of(context)!.saveExit,
//                   style: TextStyle(color: Colors.white),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../main.dart';  // Correct import

class LanguageSettingsScreen extends StatefulWidget {
  @override
  _LanguageSettingsScreenState createState() => _LanguageSettingsScreenState();
}

class _LanguageSettingsScreenState extends State<LanguageSettingsScreen> {
  String _selectedLanguage = 'en'; // Default to English

  @override
  void initState() {
    super.initState();
    _loadSelectedLanguage();
  }

  // Load the saved language from SharedPreferences
  Future<void> _loadSelectedLanguage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _selectedLanguage = prefs.getString('selected_language') ?? 'en';
    });
  }

  // Save the selected language to SharedPreferences
  Future<void> _saveSelectedLanguage(String languageCode) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('selected_language', languageCode);
    setState(() {
      _selectedLanguage = languageCode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.languageSettings),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppLocalizations.of(context)!.selectLanguage,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            DropdownButton<String>(
              value: _selectedLanguage,
              items: [
                DropdownMenuItem(value: 'en', child: Text('English')),
                DropdownMenuItem(value: 'hi', child: Text('Hindi')),
                DropdownMenuItem(value: 'mr', child: Text('Marathi')),
              ],
              onChanged: (value) {
                if (value != null) {
                  _saveSelectedLanguage(value);
                  // After saving, trigger a rebuild of the main app with the new locale
                  MyApp.setLocale(context, Locale(value));
                }
              },
            ),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  AppLocalizations.of(context)!.saveExit,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
