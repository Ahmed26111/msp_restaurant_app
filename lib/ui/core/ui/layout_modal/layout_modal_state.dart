part of 'layout_modal_cubit.dart';

@immutable
sealed class LayoutModalState {}

final class LayoutModalInitial extends LayoutModalState {}

final class LayoutModalIndexChanged extends LayoutModalState {}

