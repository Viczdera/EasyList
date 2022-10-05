import 'package:flutter/material.dart';
import '../product_actions.dart';

class HomeScreen extends StatelessWidget {
  @override //tell dart we're deliberately overriding a method defined by the Stateless widget

  //if you pass an object to be drawn onto the screen, flutter will
  //always call the build method on that object. It takes the context
  //which basically contains information about the app
  Widget build(context) {
    //widget is expected to be returned as a type
    return Scaffold(
      appBar: AppBar(title: Text('EasyList')),
      body: ProductManager(
        startingProduct: {'title': "Sausage", 'imageUrl': 'assets/food.jpg'},
      ),
      // SizedBox(
      //   height: 24,
      // )
    );
  }
}
