import 'package:flutter/material.dart';

class MainMealsScreen extends StatelessWidget {
  const MainMealsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              // Navigator.push( context,MaterialPageRoute(builder: (context) => ProfileScreen()), // Assuming ProfileScreen is in profile.dart
              // );
            },
            icon: const Icon(Icons.arrow_back)),
        title: const Text("Main meals",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // First Image Row
              Row(
                children: [
                  Expanded(
                    child: MealCard(
                      imageUrl: 'assets/images/food4.png',
                      mealName: 'Bowl of biryani with chicken pieces and a lemon',
                      price: '350EGP',
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: MealCard(
                      imageUrl: 'assets/images/food3.png',
                      mealName: 'Pizza chicken mushroom large',
                      price: '250EGP',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15), // Space between rows

              // Second Image Row
              Row(
                children: [
                  Expanded(
                    child: MealCard(
                      imageUrl: 'assets/images/food2.png',
                      mealName: 'Cheesy smash burger-three layers',
                      price: '250EGP',
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: MealCard(
                      imageUrl: 'assets/images/food4.png',
                      mealName: 'Bowl of biryani with chicken pieces and a lemon',
                      price: '350EGP',
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
                      imageUrl: 'assets/images/food4.png',
                      mealName: 'Bowl of biryani with chicken pieces and a lemon',
                      price: '350EGP',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10), // Space between rows
            ],
          ),
        ),
      ),
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
                height: 50, // Reduced height for better responsiveness
                width: 70,
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
