import 'package:flutter/material.dart';

class CartImages extends StatelessWidget {
  const CartImages({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(
        "assets/images/clothes4.png",
        width: 80,
        height: 80,
        fit: BoxFit.cover,
      ),
    );
  }
}



// class ProductImage extends StatelessWidget {
//   final String imageUrl;

//   ProductImage({required this.imageUrl});

//   @override
//   Widget build(BuildContext context) {
//     return ClipRRect(
//       borderRadius: BorderRadius.circular(10),
//       child: Image.asset(
//         imageUrl,
//         width: 80,
//         height: 80,
//         fit: BoxFit.cover,
//       ),
//     );
//   }
// }
