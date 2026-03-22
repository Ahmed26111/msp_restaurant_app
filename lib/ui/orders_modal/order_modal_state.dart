part of 'order_modal_cubit.dart';

@immutable
sealed class OrderModalState {}

final class OrderModalInitial extends OrderModalState {}

final class OrderModalAddOrderToCartSuccess extends OrderModalState {}

final class OrderModalAddOrderToCartFailed extends OrderModalState {}

final class OrderModalRemoveOrderFromCart extends OrderModalState {}

final class OrderModalGetAllOrdersFromCart extends OrderModalState {}

final class OrderModalGetTotalPrice extends OrderModalState {}

final class OrderModalClearCart extends OrderModalState {}

final class OrderModalChangePaymentMethod extends OrderModalState {}


