// // import 'package:flutter/material.dart';
// //
// // class About extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Terms and Conditions'),
// //         backgroundColor: Colors.orange,
// //       ),
// //       body: Padding(
// //         padding: const EdgeInsets.all(16.0),
// //         child: SingleChildScrollView(
// //           child: Column(
// //             crossAxisAlignment: CrossAxisAlignment.start,
// //             children: [
// //               Text(
// //                 'Terms and Conditions',
// //                 style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.orange),
// //               ),
// //               SizedBox(height: 10),
// //               Text(
// //                 '1. General Information:',
// //                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
// //               ),
// //               Text('This app provides a collection of Ganpati Aartis, mantras, and bhajans for devotional purposes.'),
// //               SizedBox(height: 10),
// //
// //               Text(
// //                 '2. Usage of the App:',
// //                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
// //               ),
// //               Text('This app is intended for personal and devotional use only. Any unauthorized use is prohibited.'),
// //               SizedBox(height: 10),
// //
// //               Text(
// //                 '3. Copyright and Ownership:',
// //                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
// //               ),
// //               Text('All content is either sourced from the public domain or compiled by our team. Users are not allowed to distribute the content without permission.'),
// //               SizedBox(height: 10),
// //
// //               Text(
// //                 '4. Limitation of Liability:',
// //                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
// //               ),
// //               Text('This app is for religious purposes only. We are not responsible for any inaccuracies or technical issues.'),
// //               SizedBox(height: 10),
// //
// //               Text(
// //                 '5. Privacy Policy:',
// //                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
// //               ),
// //               Text('We do not collect any personal data from users or share information with third parties.'),
// //               SizedBox(height: 10),
// //
// //               Text(
// //                 '6. Changes to Terms and Conditions:',
// //                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
// //               ),
// //               Text('We reserve the right to update these terms at any time. Please review them periodically.'),
// //               SizedBox(height: 20),
// //
// //               Center(
// //                 child: ElevatedButton(
// //                   style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
// //                   onPressed: () {
// //                     Navigator.pop(context);
// //                   },
// //                   child: Text('Accept & Continue', style: TextStyle(color: Colors.white)),
// //                 ),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
//
//
// // import 'package:flutter/material.dart';
// //
// // class About extends StatefulWidget {
// //   @override
// //   State<About> createState() => _AboutState();
// // }
// //
// // class _AboutState extends State<About> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('नियम व अटी'),
// //         backgroundColor: Colors.orange,
// //       ),
// //       body: Padding(
// //         padding: const EdgeInsets.all(16.0),
// //         child: SingleChildScrollView(
// //           child: Column(
// //             crossAxisAlignment: CrossAxisAlignment.start,
// //             children: [
// //               Text(
// //                 'नियम व अटी',
// //                 style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.orange),
// //               ),
// //               SizedBox(height: 10),
// //
// //               Text(
// //                 '1. सामान्य माहिती:',
// //                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
// //               ),
// //               Text('ही अॅप गणपती आरती, मंत्र आणि भजन यांचा संग्रह प्रदान करते. हे भक्तीभावासाठी तयार करण्यात आले आहे.'),
// //               SizedBox(height: 10),
// //
// //               Text(
// //                 '2. अॅपचा उपयोग:',
// //                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
// //               ),
// //               Text('हे अॅप केवळ वैयक्तिक आणि भक्तीमय उपयोगासाठी आहे. कोणत्याही अनधिकृत वापरास परवानगी नाही.'),
// //               SizedBox(height: 10),
// //
// //               Text(
// //                 '3. कॉपीराइट आणि मालकी:',
// //                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
// //               ),
// //               Text('संपूर्ण सामग्री सार्वजनिक डोमेनमधून घेतली गेली आहे किंवा आमच्या टीमने तयार केली आहे. कोणालाही त्याचे वितरण करण्यास परवानगी नाही.'),
// //               SizedBox(height: 10),
// //
// //               Text(
// //                 '4. जबाबदारीचे मर्यादापन:',
// //                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
// //               ),
// //               Text('हे अॅप केवळ धार्मिक उद्देशाने आहे. कोणत्याही प्रकारच्या चुकीच्या माहिती किंवा तांत्रिक अडचणीसाठी आम्ही जबाबदार नाही.'),
// //               SizedBox(height: 10),
// //
// //               Text(
// //                 '5. गोपनीयता धोरण:',
// //                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
// //               ),
// //               Text('हे अॅप कोणत्याही वैयक्तिक माहिती गोळा करत नाही किंवा कोणत्याही तृतीय पक्षाशी माहिती शेअर करत नाही.'),
// //               SizedBox(height: 10),
// //
// //               Text(
// //                 '6. नियम व अटींमध्ये बदल:',
// //                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
// //               ),
// //               Text('आम्ही कोणत्याही वेळी हे नियम सुधारू शकतो. कृपया वेळोवेळी नियम तपासा.'),
// //               SizedBox(height: 20),
// //
// //               Center(
// //                 child: ElevatedButton(
// //                   style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
// //                   onPressed: () {
// //                     Navigator.pop(context);
// //                   },
// //                   child: Text('मान्य करा आणि पुढे जा', style: TextStyle(color: Colors.white)),
// //                 ),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
//
//
// /// Marathi language
//
// import 'package:flutter/material.dart';
//
// class AboutScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('अ‍ॅप बद्दल'),
//         backgroundColor: Colors.orange,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Center(
//                 child: Icon(Icons.info, size: 80, color: Colors.orange),
//               ),
//               SizedBox(height: 20),
//
//               Text(
//                 'गणपती आरती संग्रह',
//                 style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.orange),
//                 textAlign: TextAlign.center,
//               ),
//               SizedBox(height: 10),
//
//               Text(
//                 'हे अ‍ॅप सर्व भक्तांसाठी तयार करण्यात आले आहे जे गणपती बाप्पाची आरती, मंत्र आणि स्तोत्रांचे पठण करू इच्छितात. या अॅपमध्ये विविध मराठी आरत्या, भक्तीगीत आणि मंत्र समाविष्ट आहेत.',
//                 style: TextStyle(fontSize: 16),
//                 textAlign: TextAlign.justify,
//               ),
//               SizedBox(height: 10),
//
//               Text(
//                 'वैशिष्ट्ये:',
//                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//               ),
//               SizedBox(height: 5),
//
//               Text('• संपूर्ण गणपती आरती संग्रह'),
//               Text('• मंत्र आणि भजने'),
//               Text('• सोपे आणि सुंदर यूजर इंटरफेस'),
//               Text('• ऑफलाईन वापरण्याची सुविधा'),
//               Text('• कोणत्याही जाहिरातीशिवाय भक्तीमय अनुभव'),
//               SizedBox(height: 10),
//
//               Text(
//                 'विकासक:',
//                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//               ),
//               Text('हे अ‍ॅप भक्तांसाठी भक्तीभावाने तयार करण्यात आले आहे. आम्ही यामध्ये सातत्याने सुधारणा करत आहोत, कृपया आपले अभिप्राय आम्हाला कळवा.', textAlign: TextAlign.justify),
//               SizedBox(height: 20),
//
//               Center(
//                 child: ElevatedButton(
//                   style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
//                   onPressed: () {
//                     Navigator.pop(context);
//                   },
//                   child: Text('बंद करा', style: TextStyle(color: Colors.white)),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// //
// // /// english language
// //
// // import 'package:flutter/material.dart';
// //
// // class AboutScreen extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('About App'),
// //         backgroundColor: Colors.orange,
// //       ),
// //       body: Padding(
// //         padding: const EdgeInsets.all(16.0),
// //         child: SingleChildScrollView(
// //           child: Column(
// //             crossAxisAlignment: CrossAxisAlignment.start,
// //             children: [
// //               Center(
// //                 child: Icon(Icons.info, size: 80, color: Colors.orange),
// //               ),
// //               SizedBox(height: 20),
// //
// //               Text(
// //                 'Ganpati Aarti Collection',
// //                 style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.orange),
// //                 textAlign: TextAlign.center,
// //               ),
// //               SizedBox(height: 10),
// //
// //               Text(
// //                 'This app is designed for all devotees who wish to recite Ganpati Aarti, Mantras, and Stotras. It includes a collection of various Marathi Aartis, devotional songs, and mantras.',
// //                 style: TextStyle(fontSize: 16),
// //                 textAlign: TextAlign.justify,
// //               ),
// //               SizedBox(height: 10),
// //
// //               Text(
// //                 'Features:',
// //                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
// //               ),
// //               SizedBox(height: 5),
// //
// //               Text('• Complete collection of Ganpati Aartis'),
// //               Text('• Mantras and Bhajans'),
// //               Text('• Simple and beautiful user interface'),
// //               Text('• Offline access available'),
// //               Text('• Devotional experience without any ads'),
// //               SizedBox(height: 10),
// //
// //               Text(
// //                 'Developer:',
// //                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
// //               ),
// //               Text(
// //                 'This app has been created with devotion for all devotees. We are constantly working on improvements, so please share your feedback with us.',
// //                 textAlign: TextAlign.justify,
// //               ),
// //               SizedBox(height: 20),
// //
// //               Center(
// //                 child: ElevatedButton(
// //                   style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
// //                   onPressed: () {
// //                     Navigator.pop(context);
// //                   },
// //                   child: Text('Close', style: TextStyle(color: Colors.white)),
// //                 ),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
//
//
//
//
// /// Hindi Language
//
//
//
// // import 'package:flutter/material.dart';
// //
// // class AboutScreen extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('ऐप के बारे में'),
// //         backgroundColor: Colors.orange,
// //       ),
// //       body: Padding(
// //         padding: const EdgeInsets.all(16.0),
// //         child: SingleChildScrollView(
// //           child: Column(
// //             crossAxisAlignment: CrossAxisAlignment.start,
// //             children: [
// //               Center(
// //                 child: Icon(Icons.info, size: 80, color: Colors.orange),
// //               ),
// //               SizedBox(height: 20),
// //
// //               Text(
// //                 'गणपति आरती संग्रह',
// //                 style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.orange),
// //                 textAlign: TextAlign.center,
// //               ),
// //               SizedBox(height: 10),
// //
// //               Text(
// //                 'यह ऐप उन सभी भक्तों के लिए बनाया गया है जो गणपति बप्पा की आरती, मंत्र और स्तोत्र का पाठ करना चाहते हैं। इस ऐप में विभिन्न मराठी आरतियां, भक्ति गीत और मंत्र शामिल हैं।',
// //                 style: TextStyle(fontSize: 16),
// //                 textAlign: TextAlign.justify,
// //               ),
// //               SizedBox(height: 10),
// //
// //               Text(
// //                 'विशेषताएँ:',
// //                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
// //               ),
// //               SizedBox(height: 5),
// //
// //               Text('• संपूर्ण गणपति आरती संग्रह'),
// //               Text('• मंत्र और भजन'),
// //               Text('• सरल और सुंदर यूजर इंटरफेस'),
// //               Text('• ऑफलाइन उपयोग की सुविधा'),
// //               Text('• बिना किसी विज्ञापन के भक्तिमय अनुभव'),
// //               SizedBox(height: 10),
// //
// //               Text(
// //                 'डेवलपर:',
// //                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
// //               ),
// //               Text(
// //                 'यह ऐप भक्तों के लिए पूरी श्रद्धा के साथ बनाया गया है। हम इसमें लगातार सुधार कर रहे हैं, कृपया हमें अपने सुझाव भेजें।',
// //                 textAlign: TextAlign.justify,
// //               ),
// //               SizedBox(height: 20),
// //
// //               Center(
// //                 child: ElevatedButton(
// //                   style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
// //                   onPressed: () {
// //                     Navigator.pop(context);
// //                   },
// //                   child: Text('बंद करें', style: TextStyle(color: Colors.white)),
// //                 ),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }



import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.aboutScreenTitle),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Icon(Icons.info, size: 80, color: Colors.orange),
              ),
              SizedBox(height: 20),

              Text(
                'गणपती आरती संग्रह',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.orange),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),

              Text(
                AppLocalizations.of(context)!.appDescription,
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 10),

              Text(
                AppLocalizations.of(context)!.features,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),

              Text(AppLocalizations.of(context)!.feature1),
              Text(AppLocalizations.of(context)!.feature2),
              Text(AppLocalizations.of(context)!.feature3),
              Text(AppLocalizations.of(context)!.feature4),
              Text(AppLocalizations.of(context)!.feature5),
              SizedBox(height: 10),

              Text(
                AppLocalizations.of(context)!.noAudioAvailable,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),



              Text(
                AppLocalizations.of(context)!.developer,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                AppLocalizations.of(context)!.developerMessage,
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 20),

              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(AppLocalizations.of(context)!.closeButton, style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}















