import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale

  List<Shoe> shoeShop = [
    Shoe(
      name: "Zoom FREAK",
      price: "2300",
      description: "the forward-thinking design",
      imagePath: "lib/Images/shoe2.png",
    ),
    Shoe(
      name: "Gordan ramsey",
      price: "300",
      description: "the forward-t ",
      imagePath: "lib/Images/shoe3.png",
    ),
    Shoe(
      name: "shaheen",
      price: "400",
      description: "the forward-t ",
      imagePath: "lib/Images/shoe4.png",
    ),
    Shoe(
      name: "nice ramsey",
      price: "120",
      description: "the forward-t ",
      imagePath: "lib/Images/shoe1.png",
    ),
  ];

  // list of items in user cart

  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get cart

  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart

  void addItemToCart(BuildContext context, Shoe shoe) async {
    if (userCart.contains(shoe)) {
      await showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text("Item is already in the cart"),
          content: const Text("Check your cart"),
        ),
      );
      notifyListeners();
      return;
    }
    userCart.add(shoe);
    showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        title: Text("Successfully added"),
        content: Text("Check your cart"),
      ),
    );
    notifyListeners();
  }

  // remote item from the cart
  void removeItemToCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
