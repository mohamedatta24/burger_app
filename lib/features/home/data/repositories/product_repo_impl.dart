import 'package:burger_app/core/services/api_error.dart';
import 'package:burger_app/core/services/api_service.dart';
import 'package:burger_app/features/home/data/models/product_model.dart';
import 'package:burger_app/features/home/domain/entities/product_entity.dart';
import 'package:burger_app/features/home/domain/repositories/product_repo.dart';
import 'package:dartz/dartz.dart';

class ProductRepoImpl implements ProductRepo {
  final ApiService apiService;

  ProductRepoImpl({required this.apiService});

  @override
  Future<Either<ApiError, List<ProductEntity>>> getProducts() async {
    try {
      final response = await apiService.get("/products");

      final products = (response['data'] as List)
          .map((e) => ProductModel.fromJson(e))
          .toList();

      return Right(products);
    } catch (e) {
      return Left(ApiError(message: e.toString()));
    }
  }
}
