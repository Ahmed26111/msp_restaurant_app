import 'dart:math';

import 'package:msp_restaurant_app/constants/best_burgers.dart';
import 'package:msp_restaurant_app/constants/best_ice_creams.dart';
import 'package:msp_restaurant_app/constants/best_pizzas.dart';
import 'package:msp_restaurant_app/data/models/food_model.dart';
import 'package:msp_restaurant_app/data/services/food_menu_service.dart';

class FoodMenuRepositories {
  static late List<BurgerModel> burgers;

  static late List<IceCreamModel> iceCreams;

  static late List<PizzasModel> pizzas;

  static final FoodMenuService _foodMenuService = FoodMenuService();

  static Future<void> getAllBurgers() async {
    final temp = await _foodMenuService.getAllBurgers();
    burgers = temp.map((burger) => BurgerModel.fromJson(burger)).toList();
    _getBestBurgers();
  }

  static Future<void> getAllIceCreams() async {
    final temp = await _foodMenuService.getAllIceCreams();
    iceCreams = temp
        .map((iceCream) => IceCreamModel.fromJson(iceCream))
        .toList();
    _getBestIceCreams();
  }

  static Future<void> getAllPizzas() async {
    final temp = await _foodMenuService.getAllPizzas();
    pizzas = temp.map((pizza) => PizzasModel.fromJson(pizza)).toList();
    _getBestPizzas();
  }

  static void _getBestBurgers() {
    List<BurgerModel> temp = [];
    for (var burger in burgers) {
      if (_isBurgerFound(burger)) {
        temp.add(burger);
      }
    }
    burgers = temp;
  }

  static bool _isBurgerFound(BurgerModel burger) {
    for (var id in BestBurgers.burgersIds) {
      if (burger.id == id) return true;
    }
    return false;
  }

  static void _getBestIceCreams() {
    List<IceCreamModel> temp = [];
    for (var iceCream in iceCreams) {
      if (_isIceCreamFound(iceCream)) {
        temp.add(iceCream);
      }
    }
    iceCreams = temp;
  }

  static bool _isIceCreamFound(IceCreamModel iceCream) {
    for (var id in BestIceCreams.iceCreamIds) {
      if (iceCream.id == id) return true;
    }
    return false;
  }

  static void _getBestPizzas() {
    List<PizzasModel> temp = [];
    for (var pizza in pizzas) {
      if (_isPizzaFound(pizza)) {
        temp.add(pizza);
      }
    }
    pizzas = temp;
  }

  static bool _isPizzaFound(PizzasModel pizza) {
    for (var id in BestPizzas.pizzasIds) {
      if (pizza.id == id) return true;
    }
    return false;
  }
}
