import 'package:addtocart/auth/authentication.dart';
import 'package:flutter/material.dart';

class InfoNavigatePage extends StatelessWidget {
  const InfoNavigatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFF2FAF5), Colors.white],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.25, 0.90],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Center(
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 40),
                      // child: Center(
                      //   child: CircleAvatar(
                      //     backgroundImage: NetworkImage(
                      //         "https://www.kindpng.com/picc/m/179-1791306_leaf-icons-download-for-free-in-png-and.png"),
                      //   ),
                      // ),
                    ),
                    const Text(
                      "Get your Groceries deliver to your home",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.black),
                    ),
                    const Text(
                      "The best delivery app in town for delivering your daily fresh groceries",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black54),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const UserAuthentication()));
                          },
                          // ignore: sort_child_properties_last
                          child: const Text("Shop Now"),
                          style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  const Color.fromRGBO(34, 170, 73, 0.9)),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              )))),
                    )
                  ],
                ),
              )
            ],
          ),
          Column(
            children: const [
              Image(
                image: AssetImage('images/vegetable.png'),
                fit: BoxFit.cover,
                alignment: Alignment.bottomLeft,
              ),
            ],
          )
        ],
      ),
    );
  }
}
