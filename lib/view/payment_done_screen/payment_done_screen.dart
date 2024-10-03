import 'package:brandora/view/payment_done_screen/widgets/payment_done_button.dart';
import 'package:brandora/view/payment_done_screen/widgets/payment_done_image.dart';
import 'package:brandora/view/payment_done_screen/widgets/payment_done_text.dart';
import 'package:flutter/material.dart';

class PaymentDoneScreen extends StatelessWidget {
  const PaymentDoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            PaymentDoneText(),
            SizedBox(height: 40),
            PaymentDoneImage(),
            SizedBox(height: 40),
            PaymentDoneButton()
          ],
        ),
      ),
    );
  }
}
