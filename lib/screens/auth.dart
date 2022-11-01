import 'package:flutter/material.dart';

import './home.dart';

class AuthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Easy List'),
      ),
      body: Center(
          child: ElevatedButton(
        child: Text('Login'),
        onPressed: () {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => HomeScreen()));
        },
      )),
    );
  }
}
