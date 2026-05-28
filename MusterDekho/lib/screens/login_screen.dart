// import 'package:flutter/material.dart';
// import 'dashboard_screen.dart';

// class LoginScreen extends StatelessWidget {

//   @override
//   Widget build(BuildContext context) {

//     return Scaffold(
//       backgroundColor: Colors.black,

//       body: Center(

//         child: Padding(
//           padding: EdgeInsets.all(20),

//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,

//             children: [

//               Text(
//                 "Login",
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 30,
//                 ),
//               ),

//               SizedBox(height: 20),

//               TextField(

//                 style: TextStyle(color: Colors.white),

//                 decoration: InputDecoration(
//                   hintText: "Email",
//                   hintStyle: TextStyle(color: Colors.white54),

//                   border: OutlineInputBorder(),
//                 ),
//               ),

//               SizedBox(height: 20),

//               TextField(
//                 obscureText: true,

//                 style: TextStyle(color: Colors.white),

//                 decoration: InputDecoration(
//                   hintText: "Password",
//                   hintStyle: TextStyle(color: Colors.white54),

//                   border: OutlineInputBorder(),
//                 ),
//               ),

//               SizedBox(height: 20),

//               ElevatedButton(

//                 onPressed: () {

//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => DashboardScreen(),
//                     ),
//                   );

//                 },

//                 child: Text("Login"),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }