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

// import 'package:flutter/material.dart';


// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: MyApp(),
//   ));
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(

//       body: Stack(
//         children: [

//           Image.network(
//             'https://i.pinimg.com/originals/4b/2f/55/4b2f553c1327f251bddd756861fa34e9.jpg',
//             fit: BoxFit.cover,
//             width: double.infinity,
//             height: double.infinity,
//           ),

//           Positioned(
//             top: 100,
//             left: 0,
//             right: 0,
//             child: Center(
//               child: Text(
//                 '11:11',
//                 style: TextStyle(
//                   fontSize: 100,
//                   color: Color.fromARGB(255, 255, 255, 255),
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//           ),

//           Positioned(
//             top: 220,
//             left: 120,
//             child: Text(
//               'Good Morning...',
//               style: TextStyle(
//                 fontSize: 25,
//                 color: Color.fromARGB(255, 255, 255, 255),
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
//         ],
//       ),

//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           print("Alarm");
//         },
//         child: Icon(Icons.alarm),
//       ),
//     );
//   }
// }


// project of front-end only

// import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       debugShowCheckedModeBanner: false,

//       home: Scaffold(
//         backgroundColor: Colors.black,

//         appBar: AppBar(
//           backgroundColor: Colors.teal,
//           title: Text('Main Menu'),
//           centerTitle: true,
//         ),

//         bottomNavigationBar: NavigationBar(
//           backgroundColor: const Color.fromARGB(255, 126, 126, 126),
//           destinations: [
//             NavigationDestination(
//               icon: Icon(Icons.home),
//               label: 'Home',
//             ),

//             NavigationDestination(
//               icon: Icon(Icons.search),
//               label: 'Search',
//             ),
//           ],
//         ),
//       ),
//     ),
//   );
// }

// making a login page

import 'package:flutter/material.dart';
import 'package:day1/screens/login_screen.dart';

void main() {

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    ),
  );
}