import 'package:burger_app/features/cart/data/models/cart_get_model.dart';

class CartResponseModel {
  final int code;
  final String message;
  final CartGetModel data;

  CartResponseModel({
    required this.code,
    required this.message,
    required this.data,
  });

  factory CartResponseModel.fromJson(Map<String, dynamic> json) {
    return CartResponseModel(
      code: json["code"],
      message: json["message"],
      data: CartGetModel.fromJson(json["data"]),
    );
  }
}
