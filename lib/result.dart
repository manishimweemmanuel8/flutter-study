import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalResult;
    const Result(this.totalResult) ;



  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("You did it")
      );
  }
}