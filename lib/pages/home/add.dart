import 'package:contact/shared/constant.dart';
import 'package:flutter/material.dart';

class Add extends StatefulWidget {
  const Add({Key? key}) : super(key: key);

  @override
  _AddState createState() => _AddState();
}

class _AddState extends State<Add> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add a contact'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 42, 115, 146),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Center(
            child: Column(
          children: [
            Form(
                child: Column(
              children: [
                SizedBox(height: 50),
                TextFormField(
                  decoration: feildInput.copyWith(hintText: "Enter Name"),
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration:
                      feildInput.copyWith(hintText: "Enter Phone Number"),
                ),
                SizedBox(height: 17),
                SizedBox(
                    height: 50,
                    width: 160,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Add Contact",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: TextButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 42, 115, 146)),
                    ))
              ],
            ))
          ],
        )),
      ),
    );
  }
}
