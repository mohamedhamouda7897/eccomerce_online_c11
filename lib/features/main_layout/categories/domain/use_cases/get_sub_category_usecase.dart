import 'package:dartz/dartz.dart';
import 'package:ecommerce_online_c11/core/exceptions/failuers.dart';
import 'package:ecommerce_online_c11/features/main_layout/categories/domain/repositories/category_repo.dart';
import 'package:ecommerce_online_c11/features/main_layout/home/data/models/category_model.dart';
import 'package:ecommerce_online_c11/features/main_layout/home/domain/repository/category_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetSubCategoryUseCase {
  CategoryRepo repository;

  GetSubCategoryUseCase(this.repository);

  Future<Either<RouteFailures, CategoryModel>> call(String catId) =>
      repository.getSubCategories(catId);
}
