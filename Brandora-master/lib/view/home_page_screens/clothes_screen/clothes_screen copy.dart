import 'package:brandora/view/home_page_screens/clothes_screen/widgets/clothes_item.dart';
import 'package:brandora/view/search_widget.dart';
import 'package:brandora/view/settings_screen/settings_screen.dart';
import 'package:flutter/material.dart';

class ClothesScreen extends StatefulWidget {
  const ClothesScreen({super.key});

  @override
  State<ClothesScreen> createState() => _ClothesScreenState();
}

class _ClothesScreenState extends State<ClothesScreen> {
   String selectedCategory = 'clothes';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Top Row: Search Widget and Setting Button
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
            child: Row(
              children: [
                Expanded(child: SearchWidget()),
                SizedBox(width: 10),
                SettingsScreen(),
              ],
            ),
          ),
SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ClothesItem()
              ])),

        ]),
    );
  }
}