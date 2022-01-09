import 'package:flutter/material.dart';

class ErrorViewWidget extends StatelessWidget {
  const ErrorViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Something went wrong'),),
    );
  }
}
