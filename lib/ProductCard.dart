import 'package:flutter/material.dart';
import 'package:test_app/Products.dart';

class ProductCard extends StatelessWidget {
  final Products products;
  final Function delete;
  ProductCard({this.products, this.delete});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Column(
          children: [
        Image.asset(
          'assets/'+products.image,
          width: 250,
        ),
        Divider(
          height: 20,
          color: Colors.black,
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Text(products.productName,
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                  )),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Price: USD '+ products.price.toString(),
                      style: TextStyle(
                          fontSize: 22, fontWeight: FontWeight.w500)),
                  Text(products.type,
                      style: TextStyle(
                          fontSize: 22, fontWeight: FontWeight.w500))
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                products.description,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    child: Text(
                      'BUY NOW',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        backgroundColor: Colors.grey[300],
                      ),
                    ),
                    onPressed: () {
                      print('Buy Now');
                    },
                  ),
                  TextButton(
                    child: Text(
                      'DELETE PRODUCT',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        backgroundColor: Colors.grey[300],
                      ),
                    ),
                    onPressed: delete
                  ),
                ],
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
