import 'package:burger_app/core/services/api_error.dart';
import 'package:burger_app/features/cart/domain/entities/cart_entity.dart';
import 'package:burger_app/features/cart/domain/entities/cart_get_entity.dart';
import 'package:dartz/dartz.dart';

abstract class CartRepo {
  Future<Either<ApiError, void>> addToCart(List<CartEntity> cartItems);
  Future<Either<ApiError, CartGetEntity>> getCart();
  Future<Either<ApiError, void>> removeFromCart(int itemId);
}
