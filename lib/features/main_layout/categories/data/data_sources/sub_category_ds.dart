import 'package:ecommerce_online_c11/core/api/api_manager.dart';
import 'package:ecommerce_online_c11/core/api/end_points.dart';
import 'package:ecommerce_online_c11/di.dart';
import 'package:ecommerce_online_c11/features/main_layout/home/data/models/CategoryModel.dart';
import 'package:injectable/injectable.dart';

abstract class SubCategoryDS {
  Future<CategoryModel> getSubCategory(String catId);
}

@Injectable(as: SubCategoryDS)
class SubCategoryDSImpl implements SubCategoryDS {
  @override
  Future<CategoryModel> getSubCategory(String catId) async {
    var response = await getIt<ApiManager>().getData(
      endPoint: "${EndPoints.categories}/$catId/subcategories",
    );

    CategoryModel categoryModel = CategoryModel.fromJson(response.data);
    return categoryModel;
  }
}
