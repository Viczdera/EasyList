import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  //products property
  final List<String>
      products; //final==can't change. If data changed, it simply replaces it and call build again
  //constructor
  Products(this.products);

// //reference a method of  class
//   Widget _buildProductItem(BuildContext context, int index) {
//     return Card(
//       child: Column(children: <Widget>[
//         Image.asset('assets/food.jpg'),
//         Text(products[0])
//       ]),
//     );
//   }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: products
          .map(
            (element) => Card(
              child: Column(
                children: <Widget>[
                  Image.asset('assets/food.jpg'),
                  Text(element)
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}
