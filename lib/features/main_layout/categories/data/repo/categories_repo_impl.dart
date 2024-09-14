import 'package:dartz/dartz.dart';
import 'package:ecommerce_online_c11/core/exceptions/failuers.dart';
import 'package:ecommerce_online_c11/features/main_layout/categories/data/data_source/sub_cateogry_ds.dart';
import 'package:ecommerce_online_c11/features/main_layout/categories/domain/repo/categories_repo.dart';
import 'package:ecommerce_online_c11/features/main_layout/home/data/models/category_Model.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: SubCategoriesRepo)
class SubCategoriesRepoImpl implements SubCategoriesRepo {
  SubCategoryDS subCategoryDS;

  SubCategoriesRepoImpl(this.subCategoryDS);

  @override
  Future<Either<RouteFailures, CategoryModel>> getSubCategories(
      String id) async {
    try {
      var data = await subCategoryDS.getSubCategory(id);

      return right(data);
    } catch (e) {
      return left(RemoteFailures(e.toString()));
    }
  }
}
