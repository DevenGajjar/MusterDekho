import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'search_page.dart';
import 'Settings_Page.dart';
import 'Profile_Page.dart';
import 'create_playlist_page.dart';

class spotifyhome extends StatefulWidget {
  @override
  State<spotifyhome> createState() => _spotifyhomeState();
}

class _spotifyhomeState extends State<spotifyhome> {

  int selectedIndex = 0;

  List pages = [
    homeContent(),
    SearchPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: pages[selectedIndex],

      bottomSheet: Container(
        height: 65,
        color: Color.fromARGB(255, 32, 32, 32),
        child: Row(
          children: [
            SizedBox(width: 10),
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset('assets/images/pic2.jpg', width: 50, height: 50, fit: BoxFit.cover),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Can't tell me nothing", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                  Text("Kanye West", style: TextStyle(color: Colors.grey, fontSize: 12)),
                ],
              ),
            ),
            Icon(Icons.favorite_border, color: Colors.white),
            SizedBox(width: 15),
            Icon(Icons.play_arrow, color: Colors.white, size: 32),
            SizedBox(width: 15),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.person_3_rounded), label: "Your Profile"),
        ],
      ),
    );
  }
}

class homeContent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topLeft,
          colors: [Colors.black, Colors.green],
          stops: [0.5, 1],
        ),
      ),

      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 50, left: 10, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // APP BAR ROW
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Good Morning...", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white)),
                  IconButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsPage()));
                    },
                    icon: Icon(Icons.settings, color: Colors.white, size: 30),
                  ),
                ],
              ),

              // GRID
              MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child:
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 3,
                children: [
                  _buildGridCard('assets/images/pic1.jpg', "Today's Top Hits"),
                  _buildGridCard('assets/images/cat.jpg', "Your Playlist"),
                  _buildGridCard('assets/images/cat.jpg', "All Time Hit's"),
                  _buildGridCard('assets/images/cat.jpg', "Best"),
                  _buildGridCard('assets/images/pic1.jpg', "Daily Explore"),
                ],
              ),
              ),

              SizedBox(height: 30),

              // MADE FOR YOU
              Text("Made For You", style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold)),

              SizedBox(height: 15),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildPlaylistCard('assets/images/pic2.jpg', "Graduation", "by Kanye West"),
                    SizedBox(width: 15),
                    _buildPlaylistCard('assets/images/pic3.jpg', "Good Kid M.A.A.D CITY", "By Kendrick"),
                    SizedBox(width: 15),
                    _buildPlaylistCard('assets/images/pic5.jpg', "Slim Shady", "by Eminem"),
                  ],
                ),
              ),

              SizedBox(height: 30),

              // YOUR PLAYLISTS
              Text("Your Playlists", style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold)),

              SizedBox(height: 15),

              // StreamBuilder listens to Firestore in real time
              // Whenever a new playlist is added, it auto updates here
              StreamBuilder(
                stream: FirebaseFirestore.instance
                    .collection("playlists")
                    .orderBy("createdAt", descending: true)
                    .snapshots(),

                builder: (context, snapshot) {

                  return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        // Create playlist button always shows first
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => CreatePlaylistPage()));
                          },
                          child: Container(
                            width: 170,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 170,
                                  width: 170,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF282828),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                    child: Icon(Icons.add, color: Colors.white, size: 50),
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text("Create Playlist", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
                                Text("Add a new playlist", style: TextStyle(color: Colors.grey, fontSize: 13)),
                              ],
                            ),
                          ),
                        ),

                        // Show playlists from Firestore
                        // If still loading, show nothing extra
                        // If loaded, loop through and show each one
                        if (snapshot.hasData)
                          ...snapshot.data!.docs.map((doc) {
                            return Row(
                              children: [
                                SizedBox(width: 15),
                                Container(
                                  width: 170,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 170,
                                        width: 170,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF282828),
                                          borderRadius: BorderRadius.circular(5),
                                        ),
                                        child: Center(
                                          child: Icon(Icons.music_note, color: Colors.grey, size: 50),
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        doc["name"],
                                        style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Text(
                                        doc["description"] == "" ? "No description" : doc["description"],
                                        style: TextStyle(color: Colors.grey, fontSize: 13),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            );
                          }).toList(),

                      ],
                    ),
                  );
                },
              ),

              SizedBox(height: 90),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGridCard(String imagePath, String title) {
    return Container(
      decoration: BoxDecoration(color: Colors.black54, borderRadius: BorderRadius.circular(8)),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(8), bottomLeft: Radius.circular(8)),
            child: Image.asset(imagePath, width: 60, height: double.infinity, fit: BoxFit.cover),
          ),
          SizedBox(width: 10),
          Flexible(child: Text(title, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold), overflow: TextOverflow.ellipsis)),
        ],
      ),
    );
  }

  Widget _buildPlaylistCard(String imagePath, String title, String subtitle) {
    return Container(
      width: 170,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset(imagePath, height: 170, width: 170, fit: BoxFit.cover),
          ),
          SizedBox(height: 5),
          Text(title, style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold), maxLines: 2, overflow: TextOverflow.ellipsis),
          Text(subtitle, style: TextStyle(fontSize: 15, color: Colors.white)),
        ],
      ),
    );
  }
}