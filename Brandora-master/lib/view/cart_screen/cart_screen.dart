import 'package:brandora/view/cart_screen/widgets/cart_row.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            CartRow(),
          ],
        ),
      ),
    );
  }
}
