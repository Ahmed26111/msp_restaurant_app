import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:msp_restaurant_app/data/models/food_model.dart';
import 'package:msp_restaurant_app/data/repositories/orders_repository.dart';

part 'order_modal_state.dart';

class OrderModalCubit extends Cubit<OrderModalState> {
  OrderModalCubit() : super(OrderModalInitial());

  static OrderModalCubit get(context)=>BlocProvider.of(context);

  List<FoodModel> getAllOrders(){
    emit(OrderModalGetAllOrdersFromCart());
    return OrdersRepository.getAllOrdersFromCart();
  }

  EnWhichPaymentMethod choice = EnWhichPaymentMethod.eCash;

  void removeOrderFromCart(FoodModel foodModel){
    OrdersRepository.deleteOrderFromCart(foodModel);
    emit(OrderModalRemoveOrderFromCart());
  }
  bool addToCart(FoodModel food){
    final bool result =  OrdersRepository.addOrderToCart(food);
    if(result) {
      emit(OrderModalAddOrderToCartSuccess());
    } else {
      emit(OrderModalAddOrderToCartFailed());
    }
    return result;
  }

  num getTotalPrice(){
    emit(OrderModalGetTotalPrice());
    return OrdersRepository.getTotalOrderPrice();
  }

  void clearCart(){
    emit(OrderModalClearCart());
    return OrdersRepository.clear();
  }

  IconData isPaymentChosen(EnWhichPaymentMethod payChoice){
      return (payChoice == choice)
          ?Icons.radio_button_checked
          :Icons.radio_button_off_outlined;
  }

  void changePaymentMethod(EnWhichPaymentMethod payChoice){
    choice = payChoice;
    emit(OrderModalChangePaymentMethod());
  }

}

enum EnWhichPaymentMethod{
  eCash,
  eMasterCard,
  eVisa
}