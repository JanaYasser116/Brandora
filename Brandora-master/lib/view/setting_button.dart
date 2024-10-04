import 'package:brandora/view/settings_screen/settings_screen.dart';
import 'package:flutter/material.dart';

class SettingButton extends StatelessWidget {
  const SettingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return 
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 140, 120, 255),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.view_list_rounded, color: Colors.white),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SettingsScreen(),
                        ),
                      );
                    },
                  ),
                );
  }
}