import 'Eis.dart';

class Shop {
  // Eis menu
  final List<Eis> iceMenu = [
    Eis(
        name: "Dei Ners",
        price: "3.10",
        imagePath: "lib/images/ice-cream(1).png",
        rating: "4.9"),
    Eis(
        name: "Glolitti",
        price: "4.10",
        imagePath: "lib/images/ice-cream(2).png",
        rating: "5"),
    Eis(
        name: "Eis Fontanella",
        price: "4.30",
        imagePath: "lib/images/ice-cream(3).png",
        rating: "4.5"),
    Eis(
        name: "Leopold's",
        price: "3.85",
        imagePath: "lib/images/ice-cream(4).png",
        rating: "3.5"),
  ];

  // customer cart
  List<Eis> _cart = [];

  // getter methods
  List<Eis> get eisMenu => eisMenu;
  List<Eis> get cart => _cart;

  // add to cart
  void addToCart(Eis eisItem, int quantity) {
    for (int i = 0; i < quantity; i++) {
      _cart.add(eisItem);
    }
  }

  // remove from cart
  void removeFromCart(Eis eis) {
    _cart.remove(eis);
  }
}
