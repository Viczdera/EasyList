import 'package:flutter/material.dart';

import './products.dart';
import './product_control.dart';

class ProductManager extends StatefulWidget {
  //adding constructor by repeating the class name
  final Map<String, String> startingProduct;
  ProductManager({required this.startingProduct}) {
    print('[ProductManager Widget] Constructor');
  }

  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  final List<Map<String, String>> _products =
      []; //array of products of type string

//init state method
  @override
  void initState() {
    if (widget.startingProduct != null) {
      _products.add(widget.startingProduct);
    }
    super.initState();
  }

  @override
  void didUpdateWidget(covariant ProductManager oldWidget) {
    // TODO: implement didUpdateWidget
    print('[ProductManagerState didUpdateWidget(');
    super.didUpdateWidget(oldWidget);
  }

//to be accessed only by the product manager widget. no one else should be able to access it
  void _addProduct(Map<String, String> product) {
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
          child: ProductControl(_addProduct),
        ),
        Expanded(child: Products(_products))
      ],
    );
  }
}
