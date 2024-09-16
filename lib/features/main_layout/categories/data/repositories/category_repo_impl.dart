import 'package:dartz/dartz.dart';
import 'package:ecommerce_online_c11/core/exceptions/failuers.dart';
import 'package:ecommerce_online_c11/features/main_layout/categories/data/data_sources/category_ds.dart';
import 'package:ecommerce_online_c11/features/main_layout/categories/domain/repositories/category_repo.dart';
import 'package:ecommerce_online_c11/features/main_layout/home/data/models/category_model.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CategoryRepo)
class CategoryRepoImpl implements CategoryRepo {
  CategoryDS categoryDS;

  CategoryRepoImpl(this.categoryDS);

  @override
  Future<Either<RouteFailures, CategoryModel>> getSubCategories(
      String catId) async {
    try {
      var data = await categoryDS.getSubCategories(catId);
      return Right(data);
    } catch (e) {
      return Left(RouteRemoteFailures(e.toString()));
    }
  }
}
