import 'package:flutter/material.dart';
import 'search_page.dart';
import 'library_page.dart';
import 'settings_page.dart';

class spotifyhome extends StatefulWidget {

  @override
  State<spotifyhome> createState() => _spotifyhomeState();
}

class _spotifyhomeState extends State<spotifyhome> {

  int selectedIndex = 0;

  List pages = [

    homeContent(),

    SearchPage(),

    LibraryPage(),
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

              child: Image.asset(
                'assets/images/pic2.jpg',

                width: 50,
                height: 50,

                fit: BoxFit.cover,
              ),
            ),

            SizedBox(width: 10),

            Expanded(

              child: Column(

                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [

                  Text(
                    "Can't tell me nothing",

                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Text(
                    "Kanye West",

                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),

            Icon(
              Icons.favorite_border,
              color: Colors.white,
            ),

            SizedBox(width: 15),

            Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 32,
            ),

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

          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "Home",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.library_music),
            label: "Your Library",
          ),
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

          colors: [
            Colors.black,
            Colors.green,
          ],

          stops: [0.5, 1],
        ),
      ),

      child: SingleChildScrollView(

        child: Padding(

          padding: EdgeInsets.only(
            top: 50,
            left: 10,
            right: 10,
          ),

          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              // APP BAR STYLE ROW

              Row(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [

                  Text(
                    "Good Morning...",

                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),

                  IconButton(

                    onPressed: () {

                      Navigator.push(

                        context,

                        MaterialPageRoute(
                          builder: (context) => SettingsPage(),
                        ),
                      );
                    },

                    icon: Icon(
                      Icons.settings,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ],
              ),

              // ================= GRID SECTION =================

              GridView.count(

                crossAxisCount: 2,

                shrinkWrap: true,

                physics: NeverScrollableScrollPhysics(),

                crossAxisSpacing: 10,
                mainAxisSpacing: 10,

                childAspectRatio: 3,

                children: [

                  // CARD 1

                  Container(

                    decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(8),
                    ),

                    child: Row(

                      children: [

                        ClipRRect(

                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            bottomLeft: Radius.circular(8),
                          ),

                          child: Image.asset(
                            'assets/images/pic1.jpg',

                            width: 60,
                            height: double.infinity,

                            fit: BoxFit.cover,
                          ),
                        ),

                        SizedBox(width: 10),

                        Text(
                          "Today's Top Hits",

                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // CARD 2

                  Container(

                    decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(8),
                    ),

                    child: Row(

                      children: [

                        ClipRRect(

                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            bottomLeft: Radius.circular(8),
                          ),

                          child: Image.asset(
                            'assets/images/cat.jpg',

                            width: 60,
                            height: double.infinity,

                            fit: BoxFit.cover,
                          ),
                        ),

                        SizedBox(width: 10),

                        Text(
                          "Your Playlist",

                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                                    // CARD 3

                  Container(

                    decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(8),
                    ),

                    child: Row(

                      children: [

                        ClipRRect(

                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            bottomLeft: Radius.circular(8),
                          ),

                          child: Image.asset(
                            'assets/images/cat.jpg',

                            width: 60,
                            height: double.infinity,

                            fit: BoxFit.cover,
                          ),
                        ),

                        SizedBox(width: 10),

                        Text(
                          "All Time Hit's",

                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                                    // CARD 4

                  Container(

                    decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(8),
                    ),

                    child: Row(

                      children: [

                        ClipRRect(

                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            bottomLeft: Radius.circular(8),
                          ),

                          child: Image.asset(
                            'assets/images/cat.jpg',

                            width: 60,
                            height: double.infinity,

                            fit: BoxFit.cover,
                          ),
                        ),

                        SizedBox(width: 10),

                        Text(
                          "Best",

                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                                    // CARD 5

                  Container(

                    decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(8),
                    ),

                    child: Row(

                      children: [

                        ClipRRect(

                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            bottomLeft: Radius.circular(8),
                          ),

                          child: Image.asset(
                            'assets/images/pic1.jpg',

                            width: 60,
                            height: double.infinity,

                            fit: BoxFit.cover,
                          ),
                        ),

                        SizedBox(width: 10),

                        Text(
                          "Daily Explore",

                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              // ================= MADE FOR YOU =================

              SizedBox(height: 30),

              Text(
                "Made For You",

                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 15),

              SingleChildScrollView(

                scrollDirection: Axis.horizontal,

                child: Row(

                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [

                    // PLAYLIST 1

                    Container(

                      width: 170,

                      child: Column(

                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [

                          ClipRRect(

                            borderRadius: BorderRadius.circular(5),

                            child: Image.asset(
                              'assets/images/pic2.jpg',

                              height: 170,
                              width: 170,

                              fit: BoxFit.cover,
                            ),
                          ),

                          SizedBox(height: 5),

                          Text(
                            "Graduation",

                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          Text(
                            "by Kanye West",

                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(width: 15),

                    // PLAYLIST 2

                    Container(

                      width: 170,

                      child: Column(

                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [

                          ClipRRect(

                            borderRadius: BorderRadius.circular(5),

                            child: Image.asset(
                              'assets/images/pic3.jpg',

                              height: 170,
                              width: 170,

                              fit: BoxFit.cover,
                            ),
                          ),

                          SizedBox(height: 5),

                          Text(
                            "Good Kid M.A.A.D CITY",

                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          Text(
                            "By Kendrick",

                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),

                  // playlist 3

                  SizedBox(width: 15,),

                                      Container(

                      width: 170,

                      child: Column(

                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [

                          ClipRRect(

                            borderRadius: BorderRadius.circular(5),

                            child: Image.asset(
                              'assets/images/pic5.jpg',

                              height: 170,
                              width: 170,

                              fit: BoxFit.cover,
                            ),
                          ),

                          SizedBox(height: 5),

                          Text(
                            "Slim Shady",

                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          Text(
                            "by Eminem",

                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}