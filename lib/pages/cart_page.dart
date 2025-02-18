import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/themes.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.creamColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Center(
            child: const Text(
          'Cart',
          style: TextStyle(fontSize: 22),
        )),
      ),
      body: const Center(
        child: Text('This is the cart page'),
      ),
    );
  }
}
