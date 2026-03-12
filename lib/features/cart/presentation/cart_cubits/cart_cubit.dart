import 'package:burger_app/features/cart/domain/entities/cart_entity.dart';
import 'package:burger_app/features/cart/domain/entities/cart_get_entity.dart';
import 'package:burger_app/features/cart/domain/repositories/cart_repo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit(this.cartRepo) : super(CartInitial());
  final CartRepo cartRepo;

  Future<void> addToCart(List<CartEntity> cartItems) async {
    emit(CartLoading());

    final result = await cartRepo.addToCart(cartItems);

    result.fold(
      (error) => emit(CartFailure(error.message)),
      (_) => emit(CartSuccess(cartItems)),
    );
  }

  Future<void> getCart() async {
    emit(CartLoading());
    final result = await cartRepo.getCart();
    result.fold(
      (error) => emit(CartFailure(error.message)),
      (getEntity) => emit(CartGetSuccess(getEntity)),
    );
  }

  Future<void> removeItem(int itemId) async {
  emit(CartLoading());
  await cartRepo.removeFromCart(itemId);
  await getCart();
}
}
