import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:msp_restaurant_app/data/models/food_model.dart';
import 'package:msp_restaurant_app/util/components/default_details_screen/default_details_widget/default_details_screen.dart';

class DefaultCardMenu extends StatelessWidget {
  const DefaultCardMenu({super.key, required this.foodModel});

  final FoodModel foodModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DefaultDetailsScreen(foodModel: foodModel),
          ),
        );
      },
      child: Card(
        margin: EdgeInsets.all(20),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image.network(foodModel.image, width: 200, height: 200),
              Text(
                foodModel.name,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(
                foodModel.country,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    size: 25,
                    color: Theme.of(context).secondaryHeaderColor,
                  ),
                  Text(
                    foodModel.rate.toString(),
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
