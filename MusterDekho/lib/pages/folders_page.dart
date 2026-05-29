import 'package:flutter/material.dart';

class FoldersPage extends StatelessWidget {

  final List<Map<String, dynamic>> folders = [
    {"name": "Camera", "count": 24, "icon": Icons.camera_alt},
    {"name": "Screenshots", "count": 12, "icon": Icons.screenshot},
    {"name": "Downloads", "count": 8, "icon": Icons.download},
    {"name": "WhatsApp", "count": 36, "icon": Icons.message},
    {"name": "Videos", "count": 5, "icon": Icons.video_collection},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: folders.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(folders[index]["icon"], size: 40, color: Colors.blueGrey),
          title: Text(folders[index]["name"]),
          subtitle: Text("${folders[index]["count"]} photos"),
          trailing: Icon(Icons.arrow_forward_ios, size: 16),
        );
      },
    );
  }
}