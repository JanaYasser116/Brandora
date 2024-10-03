//import 'package:brandora/view/empty_cart_screen/empty_cart_screen.dart';
import 'package:flutter/material.dart';

import 'view/payment_done_screen/payment_done_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PaymentDoneScreen(),
    );
  }
}
