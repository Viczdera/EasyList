import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  //products property
  final List<String>
      products; //final==can't change. If data changed, it simply replaces it and call build again
  //constructor
  Products(this.products);

// //reference a method of  class
  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(children: <Widget>[
        Image.asset('assets/food.jpg'),
        Text(products[index])
      ]),
    );
  }

//check product array
  Widget _buildProductList() {
    Widget productCard;
    if (products.length > 0) {
      productCard = ListView.builder(
        itemBuilder: _buildProductItem,
        itemCount: products.length,
      );
    } else {
      productCard = Center(
        child: Text('No Products Found. Add some !'),
      );
    }
    return productCard;
  }

  @override
  Widget build(BuildContext context) {
    return _buildProductList();
  }
}
