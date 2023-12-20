import 'package:flutter/material.dart';
class FavouritesPage extends StatefulWidget {
  const FavouritesPage({super.key});

  @override
  State<FavouritesPage> createState() => _FavouritesPageState();
}

class _FavouritesPageState extends State<FavouritesPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: const Text(
          "W I S H L I S T",
        style: TextStyle(
        fontWeight: FontWeight.w900,
        fontSize: 15,
      ),
    ));
  }
}
