import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:msp_restaurant_app/data/models/food_model.dart';
import 'package:msp_restaurant_app/data/repositories/food_menu_repositories.dart';

part 'pizzas_menu_modal_state.dart';

class PizzasMenuModalCubit extends Cubit<PizzasMenuModalState> {
  PizzasMenuModalCubit() : super(PizzasMenuModalInitial());

  static PizzasMenuModalCubit get(context) => BlocProvider.of(context);

  final List<PizzasModel> pizzas = FoodMenuRepositories.pizzas;
}
