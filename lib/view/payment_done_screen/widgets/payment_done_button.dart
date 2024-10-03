import 'package:brandora/core/style/colors.dart';
import 'package:flutter/material.dart';

class PaymentDoneButton extends StatelessWidget {
  const PaymentDoneButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        foregroundColor: AppColor.black, backgroundColor: AppColor.white, 
        elevation: 4,
        shape: CircleBorder(),
        padding: EdgeInsets.all(20),
      ),
      child: Icon(Icons.arrow_back, color: AppColor.black,size: 30),
    );
  }
}
