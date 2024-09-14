import 'package:dio/dio.dart';
import 'package:ecommerce_online_c11/core/api/api_manager.dart';
import 'package:ecommerce_online_c11/core/api/end_points.dart';
import 'package:ecommerce_online_c11/features/products_screen/data/models/ProductModel.dart';
import 'package:ecommerce_online_c11/injectable.dart';
import 'package:injectable/injectable.dart';

abstract class ProductsDS {
  Future<ProductModel> getProducts(String catId);
}

@Injectable(as: ProductsDS)
class ProductsDSImpl implements ProductsDS {
  @override
  Future<ProductModel> getProducts(String catId) async {
    Response response = await getIt<ApiManager>()
        .getData(endPoint: EndPoints.products, param: {"category[in]": catId});

    ProductModel productModel = ProductModel.fromJson(response.data);
    return productModel;
  }
}
