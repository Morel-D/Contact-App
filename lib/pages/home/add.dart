import 'package:contact/shared/constant.dart';
import 'package:flutter/material.dart';
import 'package:contact/services/database.dart';

class Add extends StatefulWidget {
  const Add({Key? key}) : super(key: key);

  @override
  _AddState createState() => _AddState();
}

class _AddState extends State<Add> {
  final Databases _databases = Databases(uid: '');
  final _formkey = GlobalKey<FormState>();

  String name = "";
  String number = "";

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
                key: _formkey,
                child: Column(
                  children: [
                    SizedBox(height: 50),
                    TextFormField(
                      onChanged: (value) => name = value,
                      decoration: feildInput.copyWith(hintText: "Enter Name"),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      onChanged: (value) => number = value,
                      decoration:
                          feildInput.copyWith(hintText: "Enter Phone Number"),
                    ),
                    SizedBox(height: 17),
                    SizedBox(
                        height: 50,
                        width: 160,
                        child: TextButton(
                          onPressed: () async {
                            if (_formkey.currentState!.validate()) {
                              dynamic results =
                                  await _databases.addContact(name, number);
                            }

                            setState(() {
                              name = "";
                              number = "";
                            });
                          },
                          child: Text(
                            "Add Contact",
                            style: TextStyle(color: Colors.white),
                          ),
                          style: TextButton.styleFrom(
                              backgroundColor:
                                  Color.fromARGB(255, 42, 115, 146)),
                        ))
                  ],
                ))
          ],
        )),
      ),
    );
  }
}
