part of 'cart_cubit.dart';

@immutable
abstract class CartState {}

class CartInitial extends CartState {}

class CartLoading extends CartState {}

class CartSuccess extends CartState {
  final List<CartEntity> items;

  CartSuccess(this.items);
}

class CartFailure extends CartState {
  final String errorMessage;

  CartFailure(this.errorMessage);
}
