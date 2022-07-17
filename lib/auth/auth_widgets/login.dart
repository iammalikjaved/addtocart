import 'package:flutter/material.dart';

class UserSignIn extends StatefulWidget {
  const UserSignIn({super.key});

  @override
  State<UserSignIn> createState() => _UserSignInState();
}

class _UserSignInState extends State<UserSignIn> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.8,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: ExactAssetImage('images/authbackground.png'),
            fit: BoxFit.cover,
            alignment: Alignment.bottomLeft,
          ),
        ));
  }
}
