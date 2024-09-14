import 'package:dartz/dartz.dart';
import 'package:ecommerce_online_c11/core/exceptions/failuers.dart';
import 'package:ecommerce_online_c11/features/main_layout/categories/domain/repo/categories_repo.dart';
import 'package:ecommerce_online_c11/features/main_layout/home/data/models/category_Model.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetSubCategoryUseCase {
  SubCategoriesRepo repo;

  GetSubCategoryUseCase(this.repo);

  Future<Either<RouteFailures, CategoryModel>> call(String id) =>
      repo.getSubCategories(id);
}
