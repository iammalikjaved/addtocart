import 'package:addtocart/screens/product.dart';
import 'package:addtocart/widgets/discount_offer.dart';
import 'package:flutter/material.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const DiscountOffer(),
        Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProductDetail()));
                },
                child: const Text("Go To Next Page"))),
      ],
    );
  }
}
