import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {
//adding constructor
  final Function addProduct;
  ProductControl(this.addProduct);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ElevatedButton(
        style: ButtonStyle(),
        onPressed: () {
          addProduct('Sausage');
        },
        child: Text('Add Product'));
  }
}
