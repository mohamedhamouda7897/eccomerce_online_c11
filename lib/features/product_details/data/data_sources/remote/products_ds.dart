import 'package:dio/dio.dart';
import 'package:ecommerce_online_c11/core/api/api_manager.dart';
import 'package:ecommerce_online_c11/core/api/end_points.dart';
import 'package:ecommerce_online_c11/core/cache/shared_pref.dart';
import 'package:ecommerce_online_c11/features/product_details/data/models/CartModel.dart';
import 'package:ecommerce_online_c11/features/products_screen/data/models/ProductModel.dart';
import 'package:ecommerce_online_c11/injectable.dart';
import 'package:injectable/injectable.dart';

abstract class ProductsDetailsDS {
  Future<CartModel> addToCart(String prodId);
}

@Injectable(as: ProductsDetailsDS)
class ProductsDetailsDSImpl implements ProductsDetailsDS {
  @override
  Future<CartModel> addToCart(String prodId) async {
    Response response = await getIt<ApiManager>().postData(
        endPoint: EndPoints.cart,
        body: {"productId": prodId},
        headers: {"token": SharedPreferencesService.getValue<String>("token")});

    CartModel cartModel = CartModel.fromJson(response.data);
    return cartModel;
  }
}
