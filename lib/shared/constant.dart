import 'package:flutter/material.dart';

const feildInput = InputDecoration(
    fillColor: Colors.white,
    filled: true,
    enabledBorder: OutlineInputBorder(
        borderSide:
            BorderSide(color: Color.fromARGB(255, 141, 215, 247), width: 1.0)),
    focusedBorder: OutlineInputBorder(
        borderSide:
            BorderSide(color: Color.fromARGB(255, 42, 115, 146), width: 2.0)));



//  Container(
//                       padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
//                       decoration: BoxDecoration(
//                         border: Border.all(width: 0.5, color: Colors.red),
//                         borderRadius: BorderRadius.circular(2),
//                       ),
//                       child: Text(
//                         "Email format not correct",
//                         style: TextStyle(color: Colors.red),
//                       ),
//                     ),



// card 


//  Card(
//               margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0),
//               child: ListTile(
//                 leading: CircleAvatar(
//                   radius: 25.0,
//                   backgroundColor: Color.fromARGB(255, 42, 115, 146),
//                 ),
//                 title: Text("Morel Denzel"),
//                 subtitle: Text(' flavour'),
//               ),
//             ),