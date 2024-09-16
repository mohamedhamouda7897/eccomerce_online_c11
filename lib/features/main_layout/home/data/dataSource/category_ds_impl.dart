import 'package:ecommerce_online_c11/core/api/api_manager.dart';
import 'package:ecommerce_online_c11/core/api/end_points.dart';
import 'package:ecommerce_online_c11/core/exceptions/exceptions.dart';
import 'package:ecommerce_online_c11/di.dart';
import 'package:ecommerce_online_c11/features/main_layout/home/data/dataSource/category_ds.dart';
import 'package:ecommerce_online_c11/features/main_layout/home/data/models/category_model.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CategoryDS)
class CategoryDSImpl implements CategoryDS {


  @override
  Future<CategoryModel> getCategories() async {
    try {
      var response = await getIt<ApiManager>().getData(endPoint: EndPoints.category);

      CategoryModel categoryModel = CategoryModel.fromJson(response.data);
      return categoryModel;
    } catch (e) {
      throw RouteRemoteException(e.toString());
    }
  }
}
