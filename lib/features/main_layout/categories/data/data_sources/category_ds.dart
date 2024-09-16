import 'package:ecommerce_online_c11/core/api/api_manager.dart';
import 'package:ecommerce_online_c11/core/api/end_points.dart';
import 'package:ecommerce_online_c11/di.dart';
import 'package:ecommerce_online_c11/features/main_layout/home/data/models/category_model.dart';
import 'package:injectable/injectable.dart';

abstract class CategoryDS {
  Future<CategoryModel> getSubCategories(String catId);
}

@Injectable(as: CategoryDS)
class CategoryDSImpl implements CategoryDS {
  @override
  Future<CategoryModel> getSubCategories(String catId) async {
    var response = await getIt<ApiManager>()
        .getData(endPoint: "${EndPoints.category}/$catId/subcategories");

    CategoryModel subCatModel = CategoryModel.fromJson(response.data);
    return subCatModel;
  }
}
