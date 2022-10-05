import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  @override //tell dart we're deliberately overriding a method defined by the Stateless widget

  //if you pass an object to be drawn onto the screen, flutter will
  //always call the build method on that object. It takes the context
  //which basically contains information about the app

  final String title;
  final String imageUrl;

  ProductScreen(this.title, this.imageUrl);
  Widget build(context) {
    //widget is expected to be returned as a type
    return Scaffold(
        appBar: AppBar(title: Text(title)),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //  crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(imageUrl),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Text(title),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: ElevatedButton(
                    onPressed: () => Navigator.pop(context, true),
                    child: Text('Remove')),
                //TODO:use ioon instead
              )
            ],
          ),
        )
        // SizedBox(
        //   height: 24,
        // )
        );
  }
}
