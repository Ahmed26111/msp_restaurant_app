import 'dart:async';

import 'package:flutter/material.dart';
import 'package:msp_restaurant_app/ui/core/ui/layout_widget/layout_screen.dart';
import 'package:msp_restaurant_app/ui/home_screen/home_widget/home_screen.dart';

class MspRestaurantSplashScreen extends StatefulWidget {
  const MspRestaurantSplashScreen({super.key});

  @override
  State<MspRestaurantSplashScreen> createState() =>
      _MspRestaurantSplashScreenState();
}

class _MspRestaurantSplashScreenState extends State<MspRestaurantSplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LayoutScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: AlignmentGeometry.topLeft,
                end: AlignmentGeometry.bottomRight,
                colors: [
                  Theme.of(context).primaryColorLight,
                  Theme.of(context).primaryColorDark,
                ],
              ),
            ),
          ),
          Positioned(
            top: 280,
            left: 30,
            child: Text(
              'MSP FoodCourt',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
          Positioned(
            top: 360,
            left: 40,
            child: Text(
              'Ready to explore ?',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
        ],
      ),
    );
  }
}
