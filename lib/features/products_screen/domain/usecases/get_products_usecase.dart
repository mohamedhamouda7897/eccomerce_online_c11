import 'package:dartz/dartz.dart';
import 'package:ecommerce_online_c11/core/exceptions/failuers.dart';
import 'package:ecommerce_online_c11/features/main_layout/categories/domain/repository/categoryTab_repo.dart';
import 'package:ecommerce_online_c11/features/main_layout/home/data/models/CategoryModel.dart';
import 'package:ecommerce_online_c11/features/products_screen/data/models/ProductModel.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetProductsUseCase {
  ProductRepo repo;

  GetProductsUseCase(this.repo);

  Future<Either<RouteFailures, ProductModel>> call(String catId) =>
      repo.getProducts(catId);
}
