import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {
  //adding constructor by repeating the class name
  final String startingProduct;
  ProductManager({this.startingProduct = 'Grilled Sharwarma'});

  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  final List<String> _products = []; //array of products of type string

//init state method
  @override
  void initState() {
    super.initState();
    _products.add(widget.startingProduct);
  }

//to be accessed only by the product manager widget. no one else should be able to access it
  void _addProduct(String product) {
    setState(() {
      _products.add(product); //add product which is received as an argument
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: ElevatedButton(
            onPressed: () {
              _addProduct('Buttermilk');
            },
            child: Text('Add Product'),
          ),
        ),
        Products(_products)
      ],
    );
  }
}
