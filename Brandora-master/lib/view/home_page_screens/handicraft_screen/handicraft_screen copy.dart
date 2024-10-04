import 'package:brandora/view/home_page_screens/handicraft_screen/widgets/handicraft_item.dart';
import 'package:brandora/view/search_widget.dart';
import 'package:brandora/view/setting_button.dart';
import 'package:flutter/material.dart';

class HandicraftScreen extends StatefulWidget {
  const HandicraftScreen({super.key});

  @override
  State<HandicraftScreen> createState() => _HandicraftScreenState();
}

class _HandicraftScreenState extends State<HandicraftScreen> {
  String selectedCategory = 'handcrafts';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(children: [
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
          child: Row(children: [HandicraftItem()])),

      Expanded(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Expanded(
                    child: MealCard(
                      imageUrl: 'assets/images/bag2.png',
                      mealName:
                          'Egypt Antiques handbag for women',
                      price: '450EGP',
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: MealCard(
                      imageUrl: 'assets/images/Accessories1.png',
                      mealName: 'Stone Necklace',
                      price: '100EGP',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                    child: MealCard(
                      imageUrl: 'assets/images/Accessories1.png',
                      mealName: 'Stone Necklace',
                      price: '100EGP',
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: MealCard(
                      imageUrl: 'assets/images/clothes4.png',
                      mealName: 'colorful wool sweater',
                      price: '350EGP',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: MealCard(
                      imageUrl: 'assets/images/bag1.png',
                      mealName: 'Small crochet bag',
                      price: '200EGP',
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: MealCard(
                       imageUrl: 'assets/images/bag2.png',
                      mealName:'Egypt Antiques handbag for women',
                      price: '450EGP',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      )
    ]));
  }
}

class MealCard extends StatelessWidget {
  final String imageUrl;
  final String mealName;
  final String price;

  const MealCard({
    Key? key,
    required this.imageUrl,
    required this.mealName,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                imageUrl,
                height: 200, // Adjust height for better responsiveness
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 10),

            // Name
            Text(
              mealName,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 10),

            // Price
            Text(
              price,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),

            Align(
              alignment: Alignment.bottomRight,
              child: IconButton(
                icon: const Icon(Icons.arrow_forward),
                onPressed: () {
                  // Navigate to the meal detail page
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
