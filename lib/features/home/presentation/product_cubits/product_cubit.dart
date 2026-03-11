import 'package:burger_app/features/home/domain/entities/product_entity.dart';
import 'package:burger_app/features/home/domain/repositories/product_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit(this.productRepo) : super(ProductInitial());
  final ProductRepo productRepo;
  Future<void> getProducts() async {
    emit(ProductLoading());
    final response = await productRepo.getProducts();
    response.fold(
      (failure) => emit(ProductFailure(failure.message)),
      (productEntity) => emit(ProductSuccess(productEntity)),
    );
  }
}
