import 'package:addtocart/auth/authentication.dart';

import 'package:flutter/material.dart';

class DiscountOffer extends StatefulWidget {
  const DiscountOffer({super.key});

  @override
  State<DiscountOffer> createState() => _DiscountOfferState();
}

class _DiscountOfferState extends State<DiscountOffer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.15,
      width: MediaQuery.of(context).size.width,
      color: null,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const UserAuthentication()));
        },
        child: const Image(
          image: NetworkImage(
              "https://static.vecteezy.com/system/resources/thumbnails/002/901/955/small/hand-holding-smartphone-with-blank-screen-isolated-on-blue-banner-background-free-photo.jpg"),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
