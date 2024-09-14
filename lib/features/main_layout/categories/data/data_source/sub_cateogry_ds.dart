import 'package:ecommerce_online_c11/core/api/api_manager.dart';
import 'package:ecommerce_online_c11/features/main_layout/home/data/models/category_Model.dart';
import 'package:injectable/injectable.dart';

abstract class SubCategoryDS {
  Future<CategoryModel> getSubCategory(String id);
}

@Injectable(as: SubCategoryDS)
class SubCategoryDSImpl implements SubCategoryDS {
  ApiManager apiManager;

  SubCategoryDSImpl(this.apiManager);

  @override
  Future<CategoryModel> getSubCategory(String id) async {
    var data = await apiManager.getData(
        endPoint: '/api/v1/categories/$id/subcategories');

    CategoryModel categoryModel = CategoryModel.fromJson(data.data);
    return categoryModel;
  }
}
