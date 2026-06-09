import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CreatePlaylistPage extends StatefulWidget {
  @override
  State<CreatePlaylistPage> createState() => _CreatePlaylistPageState();
}

class _CreatePlaylistPageState extends State<CreatePlaylistPage> {

  // These controllers let us read what the user typed
  TextEditingController nameController = TextEditingController();
  TextEditingController descController = TextEditingController();

  // This just shows a loading spinner when saving
  bool isLoading = false;

  void savePlaylist() async {

    // If name is empty, show a message and stop
    if (nameController.text.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Please enter a playlist name")),
      );
      return;
    }

    // Show loading
    setState(() {
      isLoading = true;
    });

    // Save to Firestore inside a collection called "playlists"
    await FirebaseFirestore.instance.collection("playlists").add({
      "name": nameController.text.trim(),
      "description": descController.text.trim(),
      "createdAt": Timestamp.now(),
    });

    // Hide loading
    setState(() {
      isLoading = false;
    });

    // Go back to home page
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.black,

      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Create Playlist", style: TextStyle(color: Colors.white)),
        iconTheme: IconThemeData(color: Colors.white),
      ),

      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // Playlist Name label
            Text("Playlist Name", style: TextStyle(color: Colors.white, fontSize: 16)),

            SizedBox(height: 8),

            // Playlist Name field
            TextField(
              controller: nameController,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: "Enter playlist name",
                hintStyle: TextStyle(color: Colors.grey),
                filled: true,
                fillColor: Color(0xFF1A1A1A),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
              ),
            ),

            SizedBox(height: 24),

            // Description label
            Text("Description", style: TextStyle(color: Colors.white, fontSize: 16)),

            SizedBox(height: 8),

            // Description field (bigger box)
            TextField(
              controller: descController,
              style: TextStyle(color: Colors.white),
              maxLines: 4,
              decoration: InputDecoration(
                hintText: "Enter description",
                hintStyle: TextStyle(color: Colors.grey),
                filled: true,
                fillColor: Color(0xFF1A1A1A),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
              ),
            ),

            SizedBox(height: 40),

            // Create button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: isLoading ? null : savePlaylist,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding: EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: isLoading
                    ? CircularProgressIndicator(color: Colors.black)
                    : Text("CREATE", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16)),
              ),
            ),

          ],
        ),
      ),
    );
  }
}