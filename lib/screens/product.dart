import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  @override //tell dart we're deliberately overriding a method defined by the Stateless widget

  //if you pass an object to be drawn onto the screen, flutter will
  //always call the build method on that object. It takes the context
  //which basically contains information about the app
  Widget build(context) {
    //widget is expected to be returned as a type
    return Scaffold(
        appBar: AppBar(title: Text('Product Details')),
        body: Center(
          child: Column(
            children: <Widget>[
              Text('Details'),
              ElevatedButton(
                  onPressed: () => Navigator.pop(context), child: Text('Back'))
            ],
          ),
        )
        // SizedBox(
        //   height: 24,
        // )
        );
  }
}
