import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:msp_restaurant_app/data/repositories/food_menu_repositories.dart';
import 'package:msp_restaurant_app/ui/all_menu_screen/all_menu_view_modal/all_menu_modal_cubit.dart';
import 'package:msp_restaurant_app/ui/burgers_menu_screen/burgers_menu_view_modal/burgers_menu_modal_cubit.dart';
import 'package:msp_restaurant_app/ui/core/theme/theme_manager.dart';
import 'package:msp_restaurant_app/ui/core/ui/layout_modal/layout_modal_cubit.dart';
import 'package:msp_restaurant_app/ui/home_screen/view_home_model/home_model_cubit.dart';
import 'package:msp_restaurant_app/ui/ice-creams_menu_screen/ice-creams_menu_view_modal/ice_cream_menu_modal_cubit.dart';
import 'package:msp_restaurant_app/ui/orders_modal/order_modal_cubit.dart';
import 'package:msp_restaurant_app/ui/pizzas_menu_screen/pizzas_menu_view_modal/pizzas_menu_modal_cubit.dart';
import 'package:msp_restaurant_app/ui/splash_screen/msp_restaurant_splash_screen.dart';

void main()async {
  await FoodMenuRepositories.getAllBurgers();
  await FoodMenuRepositories.getAllIceCreams();
  await FoodMenuRepositories.getAllPizzas();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context)=> HomeModelCubit()
        ),
        BlocProvider(
            create: (context)=> BurgersMenuModalCubit()
        ),
        BlocProvider(
            create: (context)=> IceCreamMenuModalCubit()
        ),
        BlocProvider(
            create: (context)=> PizzasMenuModalCubit()
        ),
        BlocProvider(
            create: (context)=> AllMenuModalCubit()
        ),
        BlocProvider(
            create: (context)=> LayoutModalCubit()
        ),
        BlocProvider(
            create: (context)=> OrderModalCubit()
        ),

      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme:  lightTheme(),
        home:  MspRestaurantSplashScreen(),
      ),
    );
  }
}

