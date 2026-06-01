import 'package:flutter/material.dart';
import 'spotifyhome.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(20),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            Text("Log-In",
            style: TextStyle(color: Colors.green,
            fontSize:  30,
            fontWeight: FontWeight.w700,
            ),
            
            ),
            


            SizedBox(height: 20),

            TextField(
              style: TextStyle(color: Colors.white),

              decoration: InputDecoration(
                hintText: "Email",
                hintStyle: TextStyle(color: Colors.white54),

                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 20),

            TextField(
              obscureText: true,

              style: TextStyle(color: Colors.white),

              decoration: InputDecoration(
                hintText: "Password",
                hintStyle: TextStyle(color: Colors.white54),

                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              height: 50,

              child: FilledButton(
                style: FilledButton.styleFrom(
                  backgroundColor: Colors.green,

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => spotifyhome()),
                  );
                },

                child: Text(
                  "Login",

                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
