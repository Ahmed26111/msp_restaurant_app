part of 'home_model_cubit.dart';

@immutable
sealed class HomeModelState {}

final class HomeModelInitial extends HomeModelState {}

final class HomeModelChangeIndexOfButtons extends HomeModelState{}