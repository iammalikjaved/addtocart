import 'package:addtocart/auth/auth_widgets/login.dart';
import 'package:flutter/material.dart';

class UserAuthentication extends StatefulWidget {
  const UserAuthentication({super.key});

  @override
  State<UserAuthentication> createState() => _UserAuthenticationState();
}

class _UserAuthenticationState extends State<UserAuthentication> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        // construct the profile details widget here
        Padding(
          padding: EdgeInsets.only(top: 10),
          child: Image(
              image: NetworkImage(
                  "https://seeklogo.com/images/S/shopping-logo-0803BFE032-seeklogo.com.png")),
        ),

        // the tab bar with two items
        // SizedBox(
        //   height: 50,
        //   child: AppBar(
        //     bottom: const TabBar(
        //       indicatorColor: Colors.white,
        //       tabs: [
        //         Tab(
        //           text: "Login",
        //         ),
        //         Tab(
        //           text: "Signup",
        //         ),
        //       ],
        //     ),
        //   ),
        // ),

        // create widgets for each tab bar here
        // Expanded(
        //   child: TabBarView(
        //     children: [
        //       // first tab bar view widget
        //       const Center(
        //         child: UserSignIn(),
        //       ),

        //       // second tab bar viiew widget
        //       Container(
        //         color: Colors.pink,
        //         child: const Center(
        //           child: Text(
        //             'Car',
        //           ),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
      ],
    );
  }
}


// https://seeklogo.com/images/S/shopping-logo-0803BFE032-seeklogo.com.png