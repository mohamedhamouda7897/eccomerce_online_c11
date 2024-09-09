import 'package:ecommerce_online_c11/core/api/api_manager.dart';
import 'package:ecommerce_online_c11/core/api/end_points.dart';
import 'package:ecommerce_online_c11/core/exceptions/exceptions.dart';
import 'package:ecommerce_online_c11/features/main_layout/categories/data/dataSource/category_ds.dart';
import 'package:ecommerce_online_c11/features/main_layout/categories/data/models/category_model.dart';

class CategoryDSImpl implements CategoryDS {
  ApiManager apiManager;

  CategoryDSImpl(this.apiManager);

  @override
  Future<CategoryModel> getCategories() async {
    try {
      var response = await apiManager.getData(endPoint: EndPoints.category);

      CategoryModel categoryModel = CategoryModel.fromJson(response.data);
      return categoryModel;
    } catch (e) {
      throw RouteRemoteException(e.toString());
    }
  }
}
