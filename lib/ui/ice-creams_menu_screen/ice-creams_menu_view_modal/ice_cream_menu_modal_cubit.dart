import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:msp_restaurant_app/data/models/food_model.dart';
import 'package:msp_restaurant_app/data/repositories/food_menu_repositories.dart';

part 'ice_cream_menu_modal_state.dart';

class IceCreamMenuModalCubit extends Cubit<IceCreamMenuModalState> {
  IceCreamMenuModalCubit() : super(IceCreamMenuModalInitial());

  static IceCreamMenuModalCubit get (context) => BlocProvider.of(context);

  final List<IceCreamModel> iceCreams = FoodMenuRepositories.iceCreams;

}
