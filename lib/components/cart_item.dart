import 'package:ecommerce_app/modules/shoe.dart';
import 'package:flutter/material.dart';

class CartItem extends StatefulWidget {
  Shoe shoe;
  void Function()? onTap;
  CartItem({super.key, required this.shoe, this.onTap});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(widget.shoe.imagePath),
      title: Text(
        widget.shoe.name,
      ),
      subtitle: Text(widget.shoe.price),
      trailing: ElevatedButton(
        onPressed: widget.onTap,
        child: const Text("remove"),
      ),
    );
  }
}
