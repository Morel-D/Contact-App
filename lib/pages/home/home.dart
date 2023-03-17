import 'package:contact/pages/home/records_list.dart';
import 'package:contact/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:contact/pages/home/add.dart';

import 'package:provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:contact/services/database.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AuthService _auth = AuthService();

    return StreamProvider<QuerySnapshot?>.value(
      initialData: null,
      value: Databases(uid: '').records,
      child: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.pushNamed(context, '/add');
            },
            backgroundColor: Color.fromARGB(255, 42, 115, 146),
            child: Icon(Icons.add),
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Text("Contacts",
                        style: TextStyle(
                            fontSize: 27,
                            color: Color.fromARGB(255, 42, 115, 146))),
                    SizedBox(width: 250),
                    TextButton.icon(
                      onPressed: () async {
                        await _auth.logout();
                      },
                      icon: Icon(Icons.person,
                          color: Color.fromARGB(255, 42, 115, 146)),
                      label: Text("Logout",
                          style: TextStyle(
                              color: Color.fromARGB(255, 42, 115, 146))),
                    )
                  ],
                ),
              ),
              RecordsList(),
            ],
          )),
    );
  }
}
