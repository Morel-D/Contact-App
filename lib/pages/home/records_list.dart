import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';

class RecordsList extends StatefulWidget {
  const RecordsList({Key? key}) : super(key: key);

  @override
  _RecordsListState createState() => _RecordsListState();
}

class _RecordsListState extends State<RecordsList> {
  @override
  Widget build(BuildContext context) {
    final records = Provider.of<QuerySnapshot?>(context);

    records?.docs.forEach((doc) => {print(doc.data())});

    return Container();
  }
}
