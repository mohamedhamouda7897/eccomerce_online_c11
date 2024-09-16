import 'package:ecommerce_online_c11/core/api/api_manager.dart';
import 'package:ecommerce_online_c11/core/api/end_points.dart';
import 'package:ecommerce_online_c11/di.dart';
import 'package:ecommerce_online_c11/features/main_layout/home/data/models/CategoryModel.dart';
import 'package:injectable/injectable.dart';


abstract class CategoryDS {
  Future<CategoryModel> getCategories();
}

@Injectable(as: CategoryDS)
class CategoryDSImpl implements CategoryDS {


  @override
  Future<CategoryModel> getCategories() async {
    var response = await getIt<ApiManager>().getData(
      endPoint: EndPoints.categories,
    );

    CategoryModel categoryModel = CategoryModel.fromJson(response.data);
    return categoryModel;
  }
}
