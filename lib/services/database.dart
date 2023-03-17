import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:contact/model/records.dart';

final CollectionReference collection =
    FirebaseFirestore.instance.collection("contacts");

class Databases {
  // CRUD OPERATION

  // Create Records

  Future<Records?> addContact(String name, String number) async {
    try {
      Map<String, dynamic> data = <String, dynamic>{
        "Name": name,
        "Number": number
      };
      collection.add(data);

      print("Data added successfully");
    } catch (e) {
      print("An error occurerd : ${e.toString()}");
    }
  }
}
