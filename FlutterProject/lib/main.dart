import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// >> - - - - Task 1 - - - - <<

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//
//         appBar: AppBar(
//           centerTitle: true,
//           elevation: 2,
//           backgroundColor: const Color(0xff009688),
//           title: const Text('🛍️ List of Fruits',
//             style: TextStyle(fontSize: 25),),
//         ),
//
//         body: Center(
//           child: RichText(
//             text:const TextSpan(
//                 children: [
//                   TextSpan(
//                       text: '🍎 Apple\n',
//                       style: TextStyle(
//                       color: Color(0xffF44336),
//                       fontSize: 38,
//                       fontWeight: FontWeight.bold,
//                       letterSpacing: 2
//                       )
//                   ),
//                   TextSpan(
//                       text: '🍇 Greps\n',
//                       style: TextStyle(
//                       color: Color(0xffE040FB),
//                       fontSize: 38,
//                       height: 1.5,
//                       fontWeight: FontWeight.w500,
//                       letterSpacing: 2
//                       )
//                   ),
//                   TextSpan(
//                       text: '🍒 Cherry\n',
//                       style: TextStyle(
//                       color: Color(0xff9C27B0),
//                       fontSize: 38,
//                       height: 1.5,
//                       fontWeight: FontWeight.w500,
//                       letterSpacing: 2
//                       )
//                   ),
//                   TextSpan(
//                       text: '🍓 Strawberry\n',
//                       style: TextStyle(
//                       color: Color(0xffE91E63),
//                       fontSize: 38,
//                       height: 1.5,
//                       fontWeight: FontWeight.w500,
//                       letterSpacing: 2
//                       )
//                   ),
//                   TextSpan(
//                       text: '🥭 Mango\n',
//                       style: TextStyle(
//                       color: Color(0xffFF9800),
//                       fontSize: 38,
//                       height: 1.5,
//                       fontWeight: FontWeight.w500,
//                       letterSpacing: 2
//                       )
//                   ),
//                   TextSpan(
//                       text: '🍍 Pineapple\n',
//                       style: TextStyle(
//                       color: Color(0xff4CAF50),
//                       fontSize: 38,
//                       height: 1.5,
//                       fontWeight: FontWeight.w500,
//                       letterSpacing: 2
//                       )
//                   ),
//                   TextSpan(
//                       text: '🍋 Lemon\n',
//                       style: TextStyle(
//                       color: Color(0xffFFC107),
//                       fontSize: 38,
//                       height: 1.5,
//                       fontWeight: FontWeight.w500,
//                       letterSpacing: 2
//                       )
//                   ),
//                   TextSpan(
//                       text: '🍉 Watermelon\n',
//                       style: TextStyle(
//                       color: Color(0xff8BC34A),
//                       fontSize: 38,
//                       height: 1.5,
//                       fontWeight: FontWeight.w500,
//                       letterSpacing: 2
//                       )
//                   ),
//                   TextSpan(
//                       text: '🥥 Coconut\n',
//                       style: TextStyle(
//                       color: Color(0xff795548),
//                       fontSize: 38,
//                       height: 1.5,
//                       fontWeight: FontWeight.w500,
//                       letterSpacing: 2
//                       )
//                   ),
//                 ]
//             ),
//           ),
//         ),
//
//       ),
//     );
//   }
// }



// >> - - - - Task 2 - - - - <<

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,

        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color(0xffFF5252),
          title: const Text('Red & White', style: TextStyle(fontSize: 25),
          ),
        ),

      body: Center(
        child: RichText(
          text: const TextSpan(
            children: [
              WidgetSpan(
                child: SizedBox(width: 102),
              ),

              //Graphics
              TextSpan(text: 'G',
                  style: TextStyle(fontSize: 25,
                  letterSpacing: 4,
                  color: Colors.green,
                  fontWeight: FontWeight.w600)),

              TextSpan(text: 'R',
                  style: TextStyle(fontSize: 34,
                      letterSpacing: 4,
                      color: Colors.red, fontWeight: FontWeight.w600)
              ),

              TextSpan(text: 'APHICS\n',
                  style: TextStyle(fontSize: 25,
                      letterSpacing: 4,
                      color: Colors.green,
                      fontWeight: FontWeight.w600)),

              //flutter
              WidgetSpan(
                child: SizedBox(width: 30),
              ),

              TextSpan(text: 'FLUTT',
                  style: TextStyle(fontSize: 25,
                      letterSpacing: 4,
                      color: Colors.blue,
                      height: 2,
                      fontWeight: FontWeight.w600)),

              TextSpan(text: 'E',
                  style: TextStyle(fontSize: 34,
                      letterSpacing: 4,
                      color: Colors.red, fontWeight: FontWeight.w600)
              ),

              TextSpan(text: 'R\n',
                  style: TextStyle(fontSize: 25,
                      letterSpacing: 4,
                      color: Colors.blue,
                      fontWeight: FontWeight.w600)),


              //Android
              WidgetSpan(
                child: SizedBox(width: 82),
              ),

              TextSpan(text: 'AN',
                  style: TextStyle(fontSize: 25,
                      letterSpacing: 4,
                      color: Colors.green,
                      height: 2,
                      fontWeight: FontWeight.w600)),

              TextSpan(text: 'D',
                  style: TextStyle(fontSize: 34,
                      letterSpacing: 4,
                      color: Colors.red, fontWeight: FontWeight.w600)
              ),

              TextSpan(text: 'ROID\n',
                  style: TextStyle(fontSize: 25,
                      letterSpacing: 4,
                      color: Colors.green,
                      fontWeight: FontWeight.w600)),


              //Design & develop
              TextSpan(text: 'DESIGN',
                  style: TextStyle(fontSize: 25,
                      letterSpacing: 4,
                      color: Colors.orange,
                      height: 2,
                      fontWeight: FontWeight.w600)),

              TextSpan(text: ' & ',
                  style: TextStyle(fontSize: 34,
                      letterSpacing: 4,
                      color: Colors.red, fontWeight: FontWeight.w600)
              ),

              TextSpan(text: 'DEVELOP\n',
                  style: TextStyle(fontSize: 25,
                      letterSpacing: 4,
                      color: Colors.orange,
                      fontWeight: FontWeight.w600)),


              //Web
              WidgetSpan(
                child: SizedBox(width: 120),
              ),

              TextSpan(text: 'W',
                  style: TextStyle(fontSize: 34,
                      letterSpacing: 4,
                      height: 1.6,
                      color: Colors.red, fontWeight: FontWeight.w600)
              ),

              TextSpan(text: 'EB\n',
                  style: TextStyle(fontSize: 25,
                      letterSpacing: 4,
                      color: Colors.blue,
                      fontWeight: FontWeight.w600)),


              //Fashion
              WidgetSpan(
                child: SizedBox(width: 68),
              ),

              TextSpan(text: 'FAS',
                  style: TextStyle(fontSize: 25,
                      letterSpacing: 4,
                      color: Colors.yellow,
                      height: 2,
                      fontWeight: FontWeight.w600)),

              TextSpan(text: 'H',
                  style: TextStyle(fontSize: 34,
                      letterSpacing: 4,
                      color: Colors.red, fontWeight: FontWeight.w600)
              ),

              TextSpan(text: 'ION\n',
                  style: TextStyle(fontSize: 25,
                      letterSpacing: 4,
                      color: Colors.yellow,
                      fontWeight: FontWeight.w600)),


              //Animation
              WidgetSpan(
                child: SizedBox(width: 12),
              ),

              TextSpan(text: 'ANIMAT',
                  style: TextStyle(fontSize: 25,
                      letterSpacing: 4,
                      color: Color(0xff009486),
                      height: 2,
                      fontWeight: FontWeight.w600)),

              TextSpan(text: 'I',
                  style: TextStyle(fontSize: 34,
                      letterSpacing: 4,
                      color: Colors.red, fontWeight: FontWeight.w600)
              ),

              TextSpan(text: 'ON\n',
                  style: TextStyle(fontSize: 25,
                      letterSpacing: 4,
                      color: Color(0xff009486),
                      fontWeight: FontWeight.w600)),



              //ITA-CS+
              WidgetSpan(
                child: SizedBox(width: 113),
              ),

              TextSpan(text: 'I',
                  style: TextStyle(fontSize: 25,
                      letterSpacing: 4,
                      color: Colors.blue,
                      height: 2,
                      fontWeight: FontWeight.w600)),

              TextSpan(text: 'T',
                  style: TextStyle(fontSize: 34,
                      letterSpacing: 4,
                      color: Colors.red, fontWeight: FontWeight.w600)
              ),

              TextSpan(text: 'A-CS+\n',
                  style: TextStyle(fontSize: 25,
                      letterSpacing: 4,
                      color: Colors.blue,
                      fontWeight: FontWeight.w600)),


              //Game
              WidgetSpan(
                child: SizedBox(width: 57),
              ),

              TextSpan(text: 'GAM',
                  style: TextStyle(fontSize: 25,
                      letterSpacing: 4,
                      color: Colors.orange,
                      height: 2,
                      fontWeight: FontWeight.w600)),

              TextSpan(text: 'E',
                  style: TextStyle(fontSize: 34,
                      letterSpacing: 4,
                      color: Colors.red, fontWeight: FontWeight.w600)
              )
            ]
          ),
        ),
      ),

      ),
    );
  }
}

