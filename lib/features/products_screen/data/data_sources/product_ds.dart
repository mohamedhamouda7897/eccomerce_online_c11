import 'package:ecommerce_online_c11/core/api/api_manager.dart';
import 'package:ecommerce_online_c11/core/api/end_points.dart';
import 'package:ecommerce_online_c11/di.dart';
import 'package:ecommerce_online_c11/features/main_layout/home/data/models/category_model.dart';
import 'package:ecommerce_online_c11/features/products_screen/data/models/ProductModel.dart';
import 'package:injectable/injectable.dart';

abstract class ProductDS {
  Future<ProductModel> getProducts(String catId);
}

@Injectable(as: ProductDS)
class ProductDSImpl implements ProductDS {
  @override
  Future<ProductModel> getProducts(String catId) async {
    var response = await getIt<ApiManager>().getData(
        endPoint: EndPoints.products, param: {'category[in]': catId});

    ProductModel productModel = ProductModel.fromJson(response.data);
    return productModel;
  }
}
