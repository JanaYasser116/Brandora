import 'package:brandora/core/style/colors.dart';
import 'package:flutter/cupertino.dart';

class PaymentDoneText extends StatelessWidget {
  const PaymentDoneText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Payment Successful!",
      style: TextStyle(
        color: AppColor.black,
        fontSize: 27,
        fontWeight: FontWeight.bold,
        fontFamily: "Roboto",
      ),
    );
  }
}
