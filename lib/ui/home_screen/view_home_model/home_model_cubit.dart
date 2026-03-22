import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:provider/provider.dart';

part 'home_model_state.dart';

class HomeModelCubit extends Cubit<HomeModelState> {
  HomeModelCubit() : super(HomeModelInitial());

  static HomeModelCubit get(context) => BlocProvider.of(context);

  EnWhichButtonChosen buttonChosen = EnWhichButtonChosen.eAllButton;

  void changeChoiceOfButtons(EnWhichButtonChosen choice) {
    buttonChosen = choice;
    emit(HomeModelChangeIndexOfButtons());
  }
}

enum EnWhichButtonChosen {
  eAllButton,
  eBurgersButton,
  eIceCreamButton,
  ePizzasButton,
}
