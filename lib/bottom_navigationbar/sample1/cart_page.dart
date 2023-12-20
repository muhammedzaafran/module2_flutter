import 'package:flutter/material.dart';
class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: const Text(
          "C A R T",
        style: TextStyle(
        fontWeight: FontWeight.w900,
        fontSize: 15,
      ),
    ));
  }
}
