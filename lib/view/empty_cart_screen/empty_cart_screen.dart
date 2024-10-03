import 'package:brandora/view/empty_cart_screen/widgets/empty_cart_image.dart';
import 'package:brandora/view/empty_cart_screen/widgets/empty_cart_row.dart';
import 'package:brandora/view/empty_cart_screen/widgets/empty_cart_text.dart';
import 'package:flutter/material.dart';

class EmptyCart extends StatelessWidget {
  EmptyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top:50),
      child: Column(
        children: [
          emptyCartRow(),
          SizedBox(height: 80),
          EmptyCartImage(),
          SizedBox(height: 40),
          EmptyCartText(),
        ],
      ),
    ));
  }
}
