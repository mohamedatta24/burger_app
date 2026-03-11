import 'package:burger_app/core/services/api_error.dart';
import 'package:burger_app/core/services/api_service.dart';
import 'package:burger_app/features/cart/data/models/cart_model.dart';
import 'package:burger_app/features/cart/domain/entities/cart_entity.dart';
import 'package:burger_app/features/cart/domain/repositories/cart_repo.dart';
import 'package:dartz/dartz.dart';

class CartRepoImpl implements CartRepo {
  final ApiService apiService;

  CartRepoImpl({required this.apiService});

  @override
  Future<Either<ApiError, void>> addToCart(List<CartEntity> cartItems) async {
    try {
      final items = cartItems.map((cartEntity) {
        return CartModel(
          productId: cartEntity.productId,
          quantity: cartEntity.quantity,
          spicy: cartEntity.spicy,
          toppings: cartEntity.toppings,
          sideOptions: cartEntity.sideOptions,
        ).toJson();
      }).toList();

      await apiService.post("/cart/add", {"items": items});

      return const Right(null);
    } catch (e) {
      return Left(ApiError(message: e.toString()));
    }
  }

  // @override
  // Future<Either<ApiError, List<CartEntity>>> getCart() async {
  //   try {
  //     final response = await apiService.get("/cart");
  //     final items = (response["items"] as List)
  //         .map((item) => CartModel.fromJson(item))
  //         .toList();
  //     return Right(items);
  //   } catch (e) {
  //     return Left(ApiError(message: e.toString()));
  //   }
  // }
}
