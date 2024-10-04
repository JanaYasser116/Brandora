import 'package:brandora/view/home_page_screens/other_screen/widgets/widgets.dart';
import 'package:brandora/view/home_page_screens/popular_screen/widgets/populer_category.dart';
import 'package:brandora/view/search_widget.dart';
import 'package:brandora/view/setting_button.dart';
import 'package:brandora/view/settings_screen/settings_screen.dart';
import 'package:flutter/material.dart';

class PopularScreen extends StatefulWidget {
  const PopularScreen({super.key});

  @override
  State<PopularScreen> createState() => _PopularScreenState();
}

class _PopularScreenState extends State<PopularScreen> {
  String selectedCategory = 'Popular';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Top Row: Search Widget and Setting Button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
            child: const Row(
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
                PopulerCategory()

              ])),

          // Scrollable Meal Cards
 Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: MealCard(
                          imageUrl: 'assets/images/bag3.png',
                          
                          mealName: 'Waterproof Soft Quilted Shoulder Bag For Women - Black',
                          price: '400EGP',
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: MealCard(
                          imageUrl: 'assets/images/clothes2.png',
                          mealName: "Men's Sweater Hoodie with Pocket",
                          price: '500EGP',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),

                  Row(
                    children: [
                      Expanded(
                        child: MealCard(
                          imageUrl: 'assets/images/Accessories1.png',
                          mealName: 'Stone Necklace',
                          price: '100EGP',
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: MealCard(
                          imageUrl: 'assets/images/woodwork1.png',
                          mealName: 'Leatherette Sofa',
                          price: '1200EGP',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: MealCard(
                          imageUrl: 'assets/images/food2.png',
                          mealName: 'Pizza chicken mushroom large',
                          price: '250EGP',
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: MealCard(
                          imageUrl: 'assets/images/food1.png',
                          mealName: 'Apple Cider Cinnamon Rolls',
                          price: '350EGP',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                ],
              
        ),
          ),
        
 )
 ])
    );
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
