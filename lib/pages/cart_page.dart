import 'dart:js';

import 'package:flutter/material.dart';
import 'package:footwearhub/components/cart_item.dart';
import 'package:footwearhub/models/cart.dart';
import 'package:footwearhub/models/shoe.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // heading
            const Text(
              'My Cart',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),

            const SizedBox(
              height: 10,
            ),

            Expanded(
              child: ListView.builder(
                itemCount: value.getShoeList().length,
                itemBuilder: (context, index) {
                  // get individual shoe
                  Shoe individualShoe = value.getShoeList()[index];

                  // return the cart item 
                  return CartItem(shoe: individualShoe,);

                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
