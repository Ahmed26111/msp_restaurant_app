import 'package:equatable/equatable.dart';
import 'package:msp_restaurant_app/constants/api_constants_manager.dart';

class FoodModel extends Equatable{
  late String id;
  late String image;
  late String name;
  late String description;
  late num price;
  late int rate;
  late String country;

  FoodModel({
    required this.id,
    required this.image,
    required this.name,
    required this.description,
    required this.price,
    required this.rate,
    required this.country,
  });

  FoodModel.fromJson(Map<String, dynamic> json) {
    id = json[ApiConstantManager.id];
    image = json[ApiConstantManager.img];
    name = json[ApiConstantManager.name];
    description = json[ApiConstantManager.dsc];
    rate = json[ApiConstantManager.rate];
    price = json[ApiConstantManager.price];
    country = json[ApiConstantManager.country];
  }

  @override
  List<Object?> get props => [id,image,name,description,price,rate,country];
}

class BurgerModel extends FoodModel {
  BurgerModel({
    required super.id,
    required super.image,
    required super.name,
    required super.description,
    required super.price,
    required super.rate,
    required super.country,
  });

  BurgerModel.fromJson(Map<String, dynamic> json):super.fromJson(json);

}

class IceCreamModel extends FoodModel {
  IceCreamModel({
    required super.id,
    required super.image,
    required super.name,
    required super.description,
    required super.price,
    required super.rate,
    required super.country,
  });

  IceCreamModel.fromJson(Map<String, dynamic> json):super.fromJson(json);

}

class PizzasModel extends FoodModel {
  PizzasModel({
    required super.id,
    required super.image,
    required super.name,
    required super.description,
    required super.price,
    required super.rate,
    required super.country,
  });

  PizzasModel.fromJson(Map<String, dynamic> json):super.fromJson(json);

}
