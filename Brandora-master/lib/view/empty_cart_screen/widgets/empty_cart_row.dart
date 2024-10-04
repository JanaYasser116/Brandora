import 'package:brandora/core/style/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class emptyCartRow extends StatelessWidget {
  emptyCartRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back,
          size: 30,
          color: AppColor.black,
          ),
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
