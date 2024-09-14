import 'package:dartz/dartz.dart';
import 'package:ecommerce_online_c11/core/exceptions/failuers.dart';
import 'package:ecommerce_online_c11/features/main_layout/home/data/models/category_Model.dart';
import 'package:ecommerce_online_c11/features/main_layout/home/domain/repositories/home_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCategoriesUseCase {
  HomeRepo repo;

  GetCategoriesUseCase(this.repo);

  Future<Either<RouteFailures, CategoryModel>> call() => repo.getCategories();
}
