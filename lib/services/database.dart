import 'package:cloud_firestore/cloud_firestore.dart';

class Databases {
  final CollectionReference collection =
      FirebaseFirestore.instance.collection("contacts");
}
