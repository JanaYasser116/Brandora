import 'package:brandora/core/style/colors.dart';
import 'package:flutter/material.dart';

class CartRow extends StatelessWidget {
  const CartRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            foregroundColor: AppColor.black,
            backgroundColor: AppColor.white, // Text color
            elevation: 4,
            shape: CircleBorder(),
            padding: EdgeInsets.all(7),
          ),
          child: Icon(Icons.arrow_back, color: AppColor.black, size: 30),
        ),
        const Text(
          "Cart",
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.bold,
            fontFamily: "Poppins",
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.person,
            color: AppColor.grey,
            size: 30,
          ),
        ),
      ],
    );
  }
}
