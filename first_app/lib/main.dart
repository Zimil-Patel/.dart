
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


//> - - - Lecture 3.1 - - - <

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Center(child: SafeArea(child: Column(
//         children: [
//           Text('\n\n\nHello'),
//           Text('\n\n\ndart'),
//           Text('\n\n\nFlutter')
//         ],
//       )
//       )
//       ),
//     );
//   }
// }


//> - - - Lecture 3.2 - - - <

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           centerTitle: true ,
//           backgroundColor: Colors.redAccent,
//           title: const Text('Flutter App', style: TextStyle(color: Colors.white),),
//           leading: const Icon(Icons.menu, color: Colors.white,),
//         ),
//         body: const Center(
//
//           child: Text('        Red & white Group of Institutes\n'
//               'One Step in Changing Education Chain...', style: TextStyle(color: Colors.redAccent, fontSize: 20)),
//         ),
//       )
//     );
//   }
// }


//> - - - Lecture 3.3 - - - <

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(centerTitle: true,
          backgroundColor: Colors.orangeAccent,
          title: const Text('Flutter App', style: TextStyle(color: Colors.white)),
          leading: const Icon(Icons.menu, color: Colors.white,),),
        body: const Center(child: Text('Red & White',
        style:  TextStyle(color: Colors.redAccent, fontSize: 50,
          decoration: TextDecoration.underline,
          decorationStyle: TextDecorationStyle.double,
          decorationColor: Colors.yellow), ),),
      ),
    );
  }
}


//> - - - Lecture 3.4 - - - <

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(centerTitle: true,
//           backgroundColor: Colors.redAccent,
//           title: const Text('My RNW', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
//         body: const Center(child: Column(
//           children: [
//             Text('\n\n\n\nRed  &  White',
//               style:  TextStyle(color: Colors.redAccent, fontSize: 60, fontWeight: FontWeight.w900,
//                   decoration: TextDecoration.underline,
//                   decorationThickness: 1,
//                   decorationColor: Colors.redAccent),
//             ),
//             Text('Multimedia Education',
//               style: TextStyle(fontSize: 30, color: Colors.redAccent,fontWeight: FontWeight.w500,),
//             ),
//             Text('Shapping "Skills" for "scalling " higher...!!!',
//               style: TextStyle(fontSize: 18, color: Colors.redAccent,fontWeight: FontWeight.w500,),
//             )
//           ],
//         ),),
//       ),
//     );
//   }
// }
//

