part of 'product_cubit.dart';

@immutable
abstract class ProductState {}

class ProductInitial extends ProductState {}

class ProductLoading extends ProductState {}

class ProductSuccess extends ProductState {
  final List<ProductEntity> productEntity;

  ProductSuccess(this.productEntity);
}

class ProductFailure extends ProductState {
  final String errorMessage;
  ProductFailure(this.errorMessage);
}
