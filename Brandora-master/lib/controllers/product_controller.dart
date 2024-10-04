import 'package:brandora/model/product_model.dart';


class ProductController {
  Product _product;

  ProductController(this._product);

  // Logic related to product management can go here
  void updateQuantity(int newQuantity) {
    // Business logic to update quantity
  }

  void toggleFavorite() {
    // Business logic to toggle favorite status
  }

  Product get product => _product;
}
