import 'package:dartz/dartz.dart';
import 'package:ecommerce_online_c11/core/exceptions/failuers.dart';
import 'package:ecommerce_online_c11/features/main_layout/home/data/dataSource/category_ds.dart';
import 'package:ecommerce_online_c11/features/main_layout/home/data/models/category_model.dart';
import 'package:ecommerce_online_c11/features/main_layout/home/domain/repository/category_repository.dart';
import 'package:injectable/injectable.dart';


@Injectable(as: CategoryRepository)
class CategoryRepoImpl implements CategoryRepository {
  CategoryDS categoryDS;

  CategoryRepoImpl(this.categoryDS);

  @override
  Future<Either<RouteFailures, CategoryModel>> getCategory() async {
    try {
      var data = await categoryDS.getCategories();

      return Right(data);
    } catch (e) {
      return Left(RouteRemoteFailures(e.toString()));
    }
  }
}
