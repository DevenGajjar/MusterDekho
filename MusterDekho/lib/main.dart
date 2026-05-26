// plearning 1

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: Scaffold(
//       backgroundColor: Colors.black,
//       body: Center(
//         child: Text(
//           'HELLO',
//           style: TextStyle(fontSize: 40, color: Colors.red),
//         ),
//       ),
//     ),
//   ));
// }


// leanrning 2

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          // Wallpaper image
          Image.network(
            'https://i.redd.it/what-is-your-favorite-iphone-and-ios-default-wallpaper-v0-ywofq9slqq4c1.jpg?width=872&format=pjpg&auto=webp&s=1c833f00f196ee239c43553090c7c742baa8a25b',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),

          // Time text at top center
          Positioned(
            top: 100,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                '11:11',
                style: TextStyle(
                  fontSize: 100,
                  color: const Color.fromARGB(255, 22, 22, 22),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

        Positioned(
          top:220,
          left: 120,
          right: 100,
           child : Text('Good Morning...',
              style: TextStyle(
                fontSize: 25,
                color: const Color.fromARGB(255, 22, 22, 22),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}