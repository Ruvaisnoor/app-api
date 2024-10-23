import 'package:api/model/product.dart';
import 'package:flutter/material.dart';


class ProductDetailPage extends StatelessWidget {
  final Product product;

  ProductDetailPage({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: 250,
                ),
                child: Image.network(
                  product.image,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Center(child: Icon(Icons.error));
                  },
                ),
              ),
              SizedBox(height: 16),
              Text(
                product.title,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                '\$${product.price.toStringAsFixed(2)}',
                style: TextStyle(fontSize: 20, color: Colors.green),
              ),
              SizedBox(height: 8),
              Text(
                'Rating: ${product.rate} (${product.count} reviews)',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                product.description,
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}