import 'package:dartz/dartz.dart';
import 'package:ecommerce_online_c11/core/exceptions/failuers.dart';
import 'package:ecommerce_online_c11/features/main_layout/home/data/data_sources/category_ds.dart';
import 'package:ecommerce_online_c11/features/main_layout/home/data/models/CategoryModel.dart';
import 'package:ecommerce_online_c11/features/main_layout/home/domain/repositories/category_repo.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CategoryRepo)
class CategoryRepoImpl implements CategoryRepo {
  CategoryDS ds;

  CategoryRepoImpl(this.ds);

  @override
  Future<Either<RouteFailures, CategoryModel>> getCategory() async {
    try {
      var result = await ds.getCategories();

      return Right(result);
    } catch (e) {
      return Left(RemoteFailures(e.toString()));
    }
  }

  @override
  Future<Either<RouteFailures, CategoryModel>> getSubCategory() {
    // TODO: implement getSubCategory
    throw UnimplementedError();
  }
}
