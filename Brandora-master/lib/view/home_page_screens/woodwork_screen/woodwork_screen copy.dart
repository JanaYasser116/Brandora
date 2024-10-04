import 'package:brandora/view/home_page_screens/woodwork_screen/widgets/woodwork_item.dart';
import 'package:brandora/view/search_widget.dart';
import 'package:brandora/view/setting_button.dart';
import 'package:flutter/material.dart';

class WoodworkScreen extends StatefulWidget {
  const WoodworkScreen({super.key});

  @override
  State<WoodworkScreen> createState() => _WoodworkScreenState();
}

class _WoodworkScreenState extends State<WoodworkScreen> {
   String selectedCategory = 'woodwork';
  @override
  Widget build(BuildContext context) {
    return   const Scaffold(
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
                WoodworkItem()
              ])),
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
                          imageUrl: 'assets/images/woodwork1.png',
                          
                          mealName: ' Leatherette Sofa',
                          price: '1200EGP',
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: MealCard(
                          imageUrl: 'assets/images/woodwork2.png',
                          mealName: "Modern Sofa",
                          price: '3000EGP',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),

                  Row(
                    children: [
                      Expanded(
                        child: MealCard(
                          imageUrl: 'assets/images/woodwork3.png',
                          mealName: 'Royal Palm Sofa',
                          price: '2500EGP',
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: MealCard(
                          imageUrl: 'assets/images/woodwork4.png',
                          mealName: 'Leatherette Sofa',
                          price: '1200EGP',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: MealCard(
                          imageUrl: 'assets/images/woodwork1.png',
                          mealName: ' Leatherette Sofa',
                          price: '1200EGP',
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: MealCard(
                          imageUrl: 'assets/images/woodwork2.png',
                          mealName: "Modern Sofa",
                          price: '3000EGP',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                ],
              
        ),
          ),
         
 )])
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
