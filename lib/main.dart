import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_app/ProductCard.dart';

import 'Products.dart';

void main() => runApp(MaterialApp(home: ProductLists()));

class ProductLists extends StatefulWidget {
  @override
  _ProductListsState createState() => _ProductListsState();
}

class _ProductListsState extends State<ProductLists> {
    List<Products> prods = [
      // Products(1, 'chelsea.jpg', 'Chelsea Home Kit', 1000, 'Jersey', 'Some Contents'),
      // Products(2, 'united.png', 'Manchester United signed kit', 2000, 'Jersey', 'Some Description'),
      // Products(3, 'united.png', '3 United signed kit', 3000, 'Boots', 'Some Description'),
      Products(id: 1, image: 'chelsea.jpg', productName: 'Chelsea Home Kit', price: 1000, type: 'Jersey', description: 'Some Contents'),
      Products(id: 2, image: 'united.png', productName: 'Manchester United signed kit', price: 2000, type: 'Jersey', description: 'Some Description'),
      Products(id: 3, image: 'united.png', productName: '3 United signed kit', price: 3000, type: 'Boots', description: 'Some Description'),
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
            backgroundColor: Colors.orange[600],
            title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/Aaha-shop-logo.png',
                    height: 50,
                  ),
                  FlatButton.icon(
                      onPressed: () {
                        print('Clicked');
                      },
                      icon: Icon(Icons.menu),
                      label: Text(''))
                ])),
        body: Column(
          children: prods.map((products) => ProductCard(products: products, delete: () {
            setState(() {
              prods.remove(products);
              print(products.productName + ' deleted');
            });
          })).toList()
        )
    );
  }
}
