import 'package:ecommerce_app/modules/shoe.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  void Function()? onTap;
  ShoeTile({super.key, required this.shoe, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //Shoe pic
            ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(shoe.imagePath)),

            // shoe description
            Text(
              shoe.description,
              style: TextStyle(color: Colors.grey[600]),
            ),
            //price+detials

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(shoe.name,
                          style: const TextStyle(
                              color: Colors.grey, fontSize: 14)),
                      Text(shoe.price,
                          style: const TextStyle(color: Colors.grey))
                    ],
                  ),
                  GestureDetector(
                    onTap: onTap,
                    child: Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.black),
                        child: const Icon(Icons.add, color: Colors.white)),
                  )
                ],
              ),
            )

            //button to add to cart
          ],
        ),
      ),
    );
  }
}
