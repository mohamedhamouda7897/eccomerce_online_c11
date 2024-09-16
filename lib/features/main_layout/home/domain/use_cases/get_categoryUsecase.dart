import 'package:dartz/dartz.dart';
import 'package:ecommerce_online_c11/core/exceptions/failuers.dart';
import 'package:ecommerce_online_c11/features/main_layout/home/data/models/CategoryModel.dart';
import 'package:ecommerce_online_c11/features/main_layout/home/domain/repositories/category_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCategoryUseCase {
  CategoryRepo repo;

  GetCategoryUseCase(this.repo);

  Future<Either<RouteFailures, CategoryModel>> call() => repo.getCategory();
}
