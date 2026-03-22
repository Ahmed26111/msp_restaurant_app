import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:msp_restaurant_app/data/models/food_model.dart';
import 'package:msp_restaurant_app/data/repositories/food_menu_repositories.dart';

part 'all_menu_modal_state.dart';

class AllMenuModalCubit extends Cubit<AllMenuModalState> {
  AllMenuModalCubit() : super(AllMenuModalInitial()){
    foods.shuffle();
  }

  static AllMenuModalCubit get(context) => BlocProvider.of(context);

  final List<FoodModel> foods = [...FoodMenuRepositories.burgers,...FoodMenuRepositories.iceCreams,...FoodMenuRepositories.pizzas];

}
