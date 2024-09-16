import 'package:dartz/dartz.dart';
import 'package:ecommerce_online_c11/core/exceptions/failuers.dart';
import 'package:ecommerce_online_c11/features/main_layout/home/data/models/category_model.dart';
import 'package:ecommerce_online_c11/features/main_layout/home/domain/repository/category_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCategoryUseCase {
  CategoryRepository repository;

  GetCategoryUseCase(this.repository);

  Future<Either<RouteFailures, CategoryModel>> call() =>
      repository.getCategory();
}
