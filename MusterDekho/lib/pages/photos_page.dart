import 'package:flutter/material.dart';

class PhotosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      padding: EdgeInsets.all(8),
      crossAxisSpacing: 8,
      mainAxisSpacing: 8,
      children: [
        Image.asset(
          'assets/images/pic1.jpg',
          fit: BoxFit.cover,
        ),
        Container(color: const Color.fromARGB(255, 54, 222, 244)),
        Container(color: const Color.fromARGB(255, 76, 244, 54)),
        Container(color: const Color.fromARGB(255, 54, 73, 244)),
        Container(color: Colors.red),
        Container(color: const Color.fromARGB(255, 57, 54, 244)),
        Container(color: Colors.red),
        Container(color: const Color.fromARGB(255, 193, 244, 54)),
        Container(color: const Color.fromARGB(255, 244, 54, 235)),
      ],
    );
  }
}