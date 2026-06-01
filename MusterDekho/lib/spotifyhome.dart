import 'package:flutter/material.dart';

class spotifyhome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(

        child: Container(

          width: double.infinity,

          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height,
          ),

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

          child: Padding(
            padding: EdgeInsets.all(15),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [

                SizedBox(height: 50),

                Text(
                  "Good Morning",

                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 20),

                // FIRST ROW

                Row(

                  children: [

                    Expanded(
                      child: Container(

                        height: 70,

                        decoration: BoxDecoration(
                          color: Colors.black54,
                          borderRadius: BorderRadius.circular(8),
                        ),

                        child: Row(

                          children: [

                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),

                              child: Image.asset(
                                'assets/images/pic3.jpg',

                                width: 70,
                                height: 70,

                                fit: BoxFit.cover,
                              ),
                            ),

                            SizedBox(width: 10),

                            Text(
                              "Serenity",

                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(width: 10),

                    Expanded(
                      child: Container(

                        height: 70,

                        decoration: BoxDecoration(
                          color: Colors.black54,
                          borderRadius: BorderRadius.circular(8),
                        ),

                        child: Row(

                          children: [

                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),

                              child: Image.asset(
                                'assets/images/pic2.jpg',

                                width: 70,
                                height: 70,

                                fit: BoxFit.cover,
                              ),
                            ),

                            SizedBox(width: 10),

                            Text(
                              "Ambient Piano",

                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 10),

                // SECOND ROW

                Row(

                  children: [

                    Expanded(
                      child: Container(

                        height: 70,

                        decoration: BoxDecoration(
                          color: Colors.black54,
                          borderRadius: BorderRadius.circular(8),
                        ),

                        child: Row(

                          children: [

                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),

                              child: Image.asset(
                                'assets/images/pic3.jpg',

                                width: 70,
                                height: 70,

                                fit: BoxFit.cover,
                              ),
                            ),

                            SizedBox(width: 10),

                            Text(
                              "Summer Walk",

                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(width: 10),

                    Expanded(
                      child: Container(

                        height: 70,

                        decoration: BoxDecoration(
                          color: Colors.black54,
                          borderRadius: BorderRadius.circular(8),
                        ),

                        child: Row(

                          children: [

                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),

                              child: Image.asset(
                                'assets/images/pic2.jpg',

                                width: 70,
                                height: 70,

                                fit: BoxFit.cover,
                              ),
                            ),

                            SizedBox(width: 10),

                            Text(
                              "Focus Flow",

                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 30),

                Text(
                  "Made for you",

                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 20),

                SingleChildScrollView(

                  scrollDirection: Axis.horizontal,

                  child: Row(

                    children: [

                      Container(

                        width: 170,

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [

                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),

                              child: Image.asset(
                                'assets/images/pic3.jpg',

                                height: 170,
                                width: 170,

                                fit: BoxFit.cover,
                              ),
                            ),

                            SizedBox(height: 10),

                            Text(
                              "Chill Vibes",

                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Text(
                              "Relax and unwind with smooth tracks",

                              style: TextStyle(
                                color: Colors.white70,
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(width: 15),

                      Container(

                        width: 170,

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [

                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),

                              child: Image.asset(
                                'assets/images/pic2.jpg',

                                height: 170,
                                width: 170,

                                fit: BoxFit.cover,
                              ),
                            ),

                            SizedBox(height: 10),

                            Text(
                              "Focus Flow",

                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Text(
                              "Music to help you concentrate",

                              style: TextStyle(
                                color: Colors.white70,
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
      ),
      bottomNavigationBar: BottomNavigationBar(

  type: BottomNavigationBarType.fixed,

  backgroundColor: Colors.black,

  selectedItemColor: Colors.green,

  unselectedItemColor: Colors.white70,

  items: [

    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: "Home",
    ),

    BottomNavigationBarItem(
      icon: Icon(Icons.search),
      label: "Search",
    ),

    BottomNavigationBarItem(
      icon: Icon(Icons.library_music),
      label: "Library",
    ),
  ],
),
    );
  }
}