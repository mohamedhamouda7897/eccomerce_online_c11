import 'package:ecommerce_online_c11/core/api/api_manager.dart';
import 'package:ecommerce_online_c11/core/api/end_points.dart';
import 'package:ecommerce_online_c11/core/cache/shared_pref.dart';
import 'package:ecommerce_online_c11/di.dart';
import 'package:ecommerce_online_c11/features/main_layout/home/data/models/category_model.dart';
import 'package:ecommerce_online_c11/features/product_details/data/models/AddToCartModel.dart';
import 'package:ecommerce_online_c11/features/products_screen/data/models/ProductModel.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class ProductDetailsDS {
  Future<AddToCartModel> addToCart(String prodId);
}

@Injectable(as: ProductDetailsDS)
class ProductDetailsDSImpl implements ProductDetailsDS {
  @override
  Future<AddToCartModel> addToCart(String prodId) async {
    var response =
        await getIt<ApiManager>().postData(endPoint: EndPoints.cart, body: {
      'productId': prodId
    }, headers: {
      'token': CacheHelper.getData<String>('token'),
    });

    AddToCartModel addToCartModel = AddToCartModel.fromJson(response.data);
    return addToCartModel;
  }
}
