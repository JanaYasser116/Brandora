import 'package:brandora/view/search_widget.dart';
import 'package:brandora/view/setting_button.dart';
import 'package:flutter/material.dart';

class OtherScreen extends StatefulWidget {
  const OtherScreen({super.key});

  @override
  State<OtherScreen> createState() => _OtherScreenState();
}

class _OtherScreenState extends State<OtherScreen> {
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
                SettingButton(),
              ],
            ),
          ),

SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                OtherScreen()
              ])),
        ]),
    );
  }
}