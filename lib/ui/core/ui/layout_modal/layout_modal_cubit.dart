import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:msp_restaurant_app/ui/cart_screen/cart_widget/cart_screen.dart';
import 'package:msp_restaurant_app/ui/home_screen/home_widget/home_screen.dart';

part 'layout_modal_state.dart';

class LayoutModalCubit extends Cubit<LayoutModalState> {
  LayoutModalCubit() : super(LayoutModalInitial());

  static LayoutModalCubit get (context) => BlocProvider.of(context);

  final List<Widget> screens = [
    HomeScreen(),
    CartScreen()
  ];

  int index = 0;

  void changeIndex(int index){
    this.index = index;
    emit(LayoutModalIndexChanged());
  }

}
