import 'package:brandora/core/style/colors.dart';
import 'package:flutter/material.dart';

class FavoriteIcon extends StatefulWidget {
  @override
  _FavoriteIconState createState() => _FavoriteIconState();
}

class _FavoriteIconState extends State<FavoriteIcon> {
  bool isFavorited = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
            color: AppColor.grey,
            borderRadius: BorderRadius.circular(50), // Circular border
          ),
      child: IconButton(
        icon: Icon(
          Icons.favorite,
          color: isFavorited ? const Color.fromARGB(255, 243, 72, 129) : Colors.grey,
        ),
        onPressed: () {
          setState(() {
            isFavorited = !isFavorited; // Toggle the favorite state
          });
        },
      ),
    );
  }
}
