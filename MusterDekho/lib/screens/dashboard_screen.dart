// import 'package:flutter/material.dart';

// class DashboardScreen extends StatefulWidget {
//   @override
//   State<DashboardScreen> createState() => _DashboardScreenState();
// }

// class _DashboardScreenState extends State<DashboardScreen> {

//   int selectedIndex = 0;
//   Widget build(BuildContext context) {

//     return Scaffold(
//       backgroundColor: Colors.black,

//       appBar: AppBar(
//         backgroundColor: Colors.teal,
//         title: Text('Main Menu'),
//         centerTitle: true,
//       ),


// body: Container(
//   child: Container(
//     child: SingleChildScrollView(
//       child: Column(
//         children: [
//           Text("Hello"),
//           ElevatedButton(
//             onPressed: () {
//               print("Hello");
//             },
//             child: Text("Click Me"),
//           ),
//       Container(
//         margin: EdgeInsets.only(bottom: 10),
//         height: 200,
//         color: Colors.amber,
//       ),
//           Container(
//         margin: EdgeInsets.only(bottom: 10),
//         height: 200,
//         color: Colors.red,
//       ),
//           Container(
//         margin: EdgeInsets.only(bottom: 10),
//         height: 200,
//         color: Colors.blue,
//       ),
//               Container(
//         margin: EdgeInsets.only(bottom: 10),
//         height: 200,
//         color: Colors.green,
//       ),
//                       Container(
//         margin: EdgeInsets.only(bottom: 10),
//         height: 200,
//         color: const Color.fromARGB(255, 100, 243, 33),
//       ),
//               Container(
//         margin: EdgeInsets.only(bottom: 10),
//         height: 200,
//         color: const Color.fromARGB(255, 175, 76, 145),
//       ),
              
      
//         ],
//       ),
//     ),
//   ),

// ),

//       bottomNavigationBar: NavigationBar(
//         backgroundColor: Color.fromARGB(255, 126, 126, 126),

//         selectedIndex: selectedIndex,

// onDestinationSelected: (int value) {
//   setState(() {
//     selectedIndex = value;
//   });
// },

//         destinations: [

//           NavigationDestination(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),

//           NavigationDestination(
//             icon: Icon(Icons.search),
//             label: 'Search',
//           ),
//         ],
//  ),

//     drawer: Drawer(
//       backgroundColor: Colors.grey,
//       child:SafeArea(
//         child: Column(
//           children: [
//             DrawerHeader(
//               child: Text("About",
//             style: TextStyle(
//               color: Colors.white,
//               fontSize: 30,
//             ),
//           ),
//       ),
      

//             ListTile(
//               title: Text("Profile"),
//             ),
//           ],
//         ),
//       ),
//      ),
//     );
//   }
// }