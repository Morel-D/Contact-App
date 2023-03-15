import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 141, 215, 247),
      child: Center(
          child: SpinKitWave(
        color: Color.fromARGB(255, 42, 115, 146),
        size: 50.0,
      )),
    );
  }
}
