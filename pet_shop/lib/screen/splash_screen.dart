import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pet_shop/screen/Home/home_screen.dart';
import 'package:pet_shop/screen/on_boarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
        Duration(seconds: 3),
        () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => OnBoarding(),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                image: AssetImage(
                    "../assets/images/_project/Plash_Screen/background.jpg"),
                fit: BoxFit.cover,
                opacity: 0.4,
              )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.shopping_cart,
                size: 200,
                color: Color.fromARGB(255, 244, 95, 95),
              ),
              Text(
                "DP Shop",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              )
            ],
          )),
    );
  }
}
