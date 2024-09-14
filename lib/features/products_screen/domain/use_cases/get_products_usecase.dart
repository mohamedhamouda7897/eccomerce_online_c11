import 'package:dartz/dartz.dart';
import 'package:ecommerce_online_c11/core/exceptions/failuers.dart';
import 'package:ecommerce_online_c11/features/products_screen/data/models/ProductModel.dart';
import 'package:ecommerce_online_c11/features/products_screen/domain/repositories/product_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetProductsUseCase {
  ProductRepo repo;

  GetProductsUseCase(this.repo);

  Future<Either<RouteFailures, ProductModel>> call(String catId) =>
      repo.getProducts(catId);
}
