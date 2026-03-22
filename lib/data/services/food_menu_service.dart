import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:msp_restaurant_app/constants/api_constants_manager.dart';
import 'package:msp_restaurant_app/constants/end_points_manager.dart';

class FoodMenuService {
   late Dio dio;

  FoodMenuService() {
    BaseOptions options = BaseOptions(
      baseUrl: ApiConstantManager.baseUrl,
      receiveDataWhenStatusError: true,
      receiveTimeout: Duration(seconds: 60),
      connectTimeout: Duration(seconds: 60),
    );

    dio = Dio(options);
  }

   Future<List<dynamic>> getAllBurgers() async {
    try {
      final response = await dio.get(EndPointsManager.burgers);
      //log(response.data.toString());
      log(response.statusCode.toString());
      return response.data;
    } on DioException catch (e) {
      log(e.toString());
      return [];
    }
  }

   Future<List<dynamic>> getAllIceCreams() async {
    try {
      final response = await dio.get(EndPointsManager.iceCream);
      //log(response.data.toString());
      log(response.statusCode.toString());
      return response.data;
    } on DioException catch (e) {
      log(e.toString());
      return [];
    }
  }

   Future<List<dynamic>> getAllPizzas() async {
    try {
      final response = await dio.get(EndPointsManager.pizzas);
     // log(response.data.toString());
      log(response.statusCode.toString());
      return response.data;
    } on DioException catch (e) {
      log(e.toString());
      return [];
    }
  }
}
