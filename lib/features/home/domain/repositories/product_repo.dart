import 'package:burger_app/core/services/api_error.dart';
import 'package:burger_app/features/home/domain/entities/product_entity.dart';
import 'package:dartz/dartz.dart';

abstract class ProductRepo {
  Future<Either<ApiError, List<ProductEntity>>> getProducts();
}
