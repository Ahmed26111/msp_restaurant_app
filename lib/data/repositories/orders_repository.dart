import 'dart:developer';

import 'package:msp_restaurant_app/data/models/food_model.dart';

class OrdersRepository {
  static List<FoodModel> foods = [];

  static bool addOrderToCart(FoodModel order){
      if(foods.contains(order)){
        return false;
      }
      foods.add(order);
      return true;
  }

  static void deleteOrderFromCart(FoodModel order){
    foods.remove(order);
  }

  static List<FoodModel> getAllOrdersFromCart(){
    return foods;
  }
  static num getTotalOrderPrice(){
    num total=  0;
    for (var food in foods) {
      total += food.price;
    }
    return total;
  }

  static void clear(){
    foods.clear();
  }

}