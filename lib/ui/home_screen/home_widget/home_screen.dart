import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:msp_restaurant_app/ui/all_menu_screen/all_menu_widget/all_menu.dart';
import 'package:msp_restaurant_app/ui/home_screen/view_home_model/home_model_cubit.dart';
import 'package:msp_restaurant_app/ui/ice-creams_menu_screen/ice-creams_menu_widget/ice-cream_menu.dart';
import 'package:msp_restaurant_app/ui/pizzas_menu_screen/pizzas_menu_widget/pizzas_menu.dart';

import '../../burgers_menu_screen/burgers_menu_widget/burgers_menu.dart';
import '../../core/theme/theme_manager.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: HomeModelCubit.get(context),
      builder: (context, state) {
        var cubit = HomeModelCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            title: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "MSP FoodCourt",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Text(
                  "Order your favourite food!",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    spacing: 10,
                    children: [
                      FilledButton(
                        onPressed: () {
                          cubit.changeChoiceOfButtons(
                            EnWhichButtonChosen.eAllButton,
                          );
                        },
                        style:
                            (cubit.buttonChosen ==
                                EnWhichButtonChosen.eAllButton)
                            ? selectedButtonStyle()
                            : Theme.of(context).filledButtonTheme.style,
                        child: Text("All",style: TextStyle(fontSize: 20),),
                      ),
                      FilledButton(
                        onPressed: () {
                          cubit.changeChoiceOfButtons(
                            EnWhichButtonChosen.eBurgersButton,
                          );
                        },
                        style:
                        (cubit.buttonChosen ==
                            EnWhichButtonChosen.eBurgersButton)
                            ? selectedButtonStyle()
                            : Theme.of(context).filledButtonTheme.style,
                        child: Text("Burgers",style: TextStyle(fontSize: 20)),
                      ),
                      FilledButton(
                        onPressed: () {
                          cubit.changeChoiceOfButtons(
                            EnWhichButtonChosen.eIceCreamButton,
                          );
                        },
                        style:
                        (cubit.buttonChosen ==
                            EnWhichButtonChosen.eIceCreamButton)
                            ? selectedButtonStyle()
                            : Theme.of(context).filledButtonTheme.style,
                        child: Text("Ice-Cream",style: TextStyle(fontSize: 20)),
                      ),
                      FilledButton(
                        onPressed: () {
                          cubit.changeChoiceOfButtons(
                            EnWhichButtonChosen.ePizzasButton,
                          );
                        },
                        style:
                        (cubit.buttonChosen ==
                            EnWhichButtonChosen.ePizzasButton)
                            ? selectedButtonStyle()
                            : Theme.of(context).filledButtonTheme.style,
                        child: Text("Pizzas",style: TextStyle(fontSize: 20)),
                      ),
                    ],
                  ),
                ),
              ),
              switch(cubit.buttonChosen) {
                EnWhichButtonChosen.eAllButton => AllMenu(),
                EnWhichButtonChosen.eBurgersButton => BurgersMenu(),
                EnWhichButtonChosen.eIceCreamButton => IceCreamMenu(),
                EnWhichButtonChosen.ePizzasButton => PizzasMenu(),
              }
            ],

          ),
        );
      },
    );
  }
}
