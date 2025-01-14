import 'package:ecommerce_app/components/cart_item.dart';
import 'package:ecommerce_app/modules/cart.dart';
import 'package:ecommerce_app/modules/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  Text("My cart",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                      child: ListView.builder(
                    itemCount: value.getUserCart().length,
                    itemBuilder: (context, index) {
                      //get individual shoe

                      Shoe individualShow = value.getUserCart()[index];
                      return CartItem(
                        shoe: individualShow,
                        onTap: () => value.removeItemToCart(individualShow),
                      );
                    },
                  ))
                ],
              ),
            ));
  }
}
