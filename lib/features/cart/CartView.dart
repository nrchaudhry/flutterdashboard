import 'package:flutter/material.dart';

import 'package:flutterdashboard/config/theme.dart';

import 'package:flutterdashboard/features/cart/Cart.dart';
import 'package:flutterdashboard/features/cart/CartController.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CartViewState createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  List<Cart> items = CartController.get(); // Sample cart items

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart - $headerTitle'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return ListTile(
            title: Text(item.product_CODE + " - " + item.productitem_NAME),
            trailing: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                setState(() {
                  items.removeAt(index);
                });
              },
            ),
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Total: \$${calculateTotal()}'),
              ElevatedButton(
                onPressed: () {
                  // Implement the checkout functionality here
                  // You can navigate to a checkout screen or perform any other action.
                },
                child: const Text('Place Order'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  double calculateTotal() {
    double total = 0.0;
    // ignore: unused_local_variable
    for (Cart item in items) {
      // Calculate the total based on item prices or quantities
      // In this example, we assume a fixed price for each item.
      total += 10.0; // Adjust this value according to your use case.
    }
    return total;
  }
}