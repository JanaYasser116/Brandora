import 'package:brandora/core/style/colors.dart';
import 'package:flutter/material.dart';

class EmptyCartText extends StatelessWidget {
  const EmptyCartText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "There is nothing in your\n",
        style: TextStyle(
          color: AppColor.grey2,
          fontSize: 25,
          fontWeight: FontWeight.bold,
          fontFamily: "Poppins",
        ),
        children: <TextSpan>[
          TextSpan(
            text: 'cart.',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              fontFamily: "Poppins",
              color: AppColor.grey2,
            ),
          ),
        ],
      ),
      textAlign: TextAlign.center, // Center-align the text
    );
  }
}
