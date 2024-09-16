import 'package:ecommerce_online_c11/core/api/api_manager.dart';
import 'package:ecommerce_online_c11/core/api/end_points.dart';
import 'package:ecommerce_online_c11/core/cache/shared_pref.dart';
import 'package:ecommerce_online_c11/di.dart';
import 'package:ecommerce_online_c11/features/main_layout/home/data/models/CategoryModel.dart';
import 'package:ecommerce_online_c11/features/products_screen/data/models/AddToCartModel.dart';
import 'package:ecommerce_online_c11/features/products_screen/data/models/ProductModel.dart';
import 'package:injectable/injectable.dart';

abstract class ProductsDS {
  Future<ProductModel> getProducts(String catId);

  Future<AddToCartModel> addToCart(String prodId);
}

@Injectable(as: ProductsDS)
class ProductsDSImpl implements ProductsDS {
  @override
  Future<ProductModel> getProducts(String catId) async {
    var response = await getIt<ApiManager>()
        .getData(endPoint: EndPoints.products, param: {"category[in]": catId});

    ProductModel productModel = ProductModel.fromJson(response.data);
    return productModel;
  }

  @override
  Future<AddToCartModel> addToCart(String prodId) async {
    var response = await getIt<ApiManager>().postData(
        endPoint: EndPoints.cart,
        body: {
          "productId": prodId
        },
        headers: {
          'token': SharedPreferencesService().getValue<String>('token')
        });

    AddToCartModel addToCartModel = AddToCartModel.fromJson(response.data);
    return addToCartModel;
  }
}
