import 'package:flutter/material.dart';

import './screens/home.dart';
import './screens/auth.dart';

void main() => runApp(MyApp());

//extends allows you to inherit from a base class
//extends a feature known as stateless class which works on internal data

class MyApp extends StatelessWidget {
  @override //tell dart we're deliberately overriding a method defined by the Stateless widget

  //if you pass an object to be drawn onto the screen, flutter will
  //always call the build method on that object. It takes the context
  //which basically contains information about the app
  Widget build(context) {
    //widget is expected to be returned as a type
    return MaterialApp(
        theme: ThemeData(
          brightness: Brightness.dark,
          //primarySwatch is a set of colors where we define one color and all other colors will be inferred auto
          primarySwatch: Colors.deepOrange,
          accentColor: Colors.blue,
        ),
        home: AuthScreen());
  }
}


// class MyApp extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     return _MyAppState();
//   }
// }

// class _MyAppState extends State<MyApp> {
//   List<String> _products = [
//     'Food Testeer',
//   ]; //array of products of type string

//   @override //tell dart we're deliberately overriding a method defined by the Stateless widget

//   //if you pass an object to be drawn onto the screen, flutter will
//   //always call the build method on that object. It takes the context
//   //which basically contains information about the app
//   Widget build(context) {
//     //widget is expected to be returned as a type
//     return MaterialApp(
//         home: Scaffold(
//       appBar: AppBar(title: Text('EasyList')),
//       body: Column(children: [
       
//       ]),
//     ));
//   }
// }


