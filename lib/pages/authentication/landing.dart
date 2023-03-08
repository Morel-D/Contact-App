import 'package:flutter/material.dart';

class Landing extends StatelessWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.fromLTRB(60, 0, 0, 0),
        child: Column(
          children: [
            Container(
                child: Image.asset(
              "assets/lands.png",
              width: 400,
              height: 400,
            )),
            Text(
              "Welcome To HyApp",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 141, 215, 247)),
            ),
            Text("The World's greatest contact storing app"),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 150,
                  height: 35,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: TextButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 42, 115, 146)),
                  ),
                ),
                SizedBox(width: 20),
                SizedBox(
                  width: 150,
                  height: 35,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Register",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: TextButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 141, 215, 247)),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
