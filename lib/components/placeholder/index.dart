import 'package:flutter/material.dart';

class Placeholder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 30,
        height: 30,
        child: CircularProgressIndicator(
          color: Colors.redAccent,
        ),
      ),
    );
  }
}
