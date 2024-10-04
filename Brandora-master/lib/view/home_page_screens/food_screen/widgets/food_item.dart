import 'package:brandora/view/home_page_screens/clothes_screen/clothes_screen%20copy.dart';
import 'package:brandora/view/home_page_screens/handicraft_screen/handicraft_screen%20copy.dart';
import 'package:brandora/view/home_page_screens/other_screen/other_screen%20copy.dart';
import 'package:brandora/view/home_page_screens/popular_screen/popular_screen%20copy.dart';
import 'package:brandora/view/home_page_screens/woodwork_screen/woodwork_screen%20copy.dart';
import 'package:flutter/material.dart';

class FoodItem extends StatefulWidget {
  const FoodItem({super.key});

  @override
  State<FoodItem> createState() => _FoodItemState();
}

class _FoodItemState extends State<FoodItem> {
  String selectedCategory = 'food';
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CategoryItem(
                  label: 'Popular',
                  icon: Icons.star,
                  isSelected: selectedCategory == 'Popular',
                  onTap: () {
                   Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PopularScreen(),
                      ),
                    );
                  },
                ),
                CategoryItem(
                  label: 'Woodwork',
                  icon: Icons.chair,
                  isSelected: selectedCategory == 'woodwork',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => WoodworkScreen(),
                      ),
                    );
                  },
                ),
                CategoryItem(
                  label: 'Handcrafts',
                  icon: Icons.brush,
                  isSelected: selectedCategory == 'handcrafts',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HandicraftScreen(),
                      ),
                    );
                  },
                ),
                CategoryItem(
                  label: 'Food',
                  icon: Icons.food_bank,
                  isSelected: selectedCategory == 'food',
                  onTap: () {
                    
                    setState(() {
                      selectedCategory = 'food';
                    });
                  }
                ),
                CategoryItem(
                  label: 'Clothes',
                  icon: Icons.checkroom,
                  isSelected: selectedCategory == 'clothes',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ClothesScreen(),
                      ),
                    );
                  },
                ),
                CategoryItem(
                  label: 'Other',
                  icon: Icons.lightbulb,
                  isSelected: selectedCategory == 'other',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OtherScreen(),
                      ),
                    );
                  },
                ),
              ],
            ),
          
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String label;
  final IconData icon;
  final bool isSelected;
  final VoidCallback onTap;

  const CategoryItem({
    Key? key,
    required this.label,
    required this.icon,
    this.isSelected = false,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: isSelected
                    ? const Color.fromARGB(255, 140, 120, 255)
                    : Colors.grey[200],
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.all(8),
              child: Icon(
                icon,
                color: isSelected ? Colors.white : Colors.grey,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(
                color: isSelected
                    ? const Color.fromARGB(255, 140, 120, 255)
                    : Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
