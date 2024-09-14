import 'package:dio/dio.dart';
import 'package:ecommerce_online_c11/core/api/api_manager.dart';
import 'package:ecommerce_online_c11/core/api/end_points.dart';
import 'package:ecommerce_online_c11/core/cache/shared_pref.dart';
import 'package:ecommerce_online_c11/features/cart/data/models/CartDetailsModel.dart';
import 'package:ecommerce_online_c11/features/product_details/data/models/CartModel.dart';
import 'package:ecommerce_online_c11/features/products_screen/data/models/ProductModel.dart';
import 'package:ecommerce_online_c11/injectable.dart';
import 'package:injectable/injectable.dart';

abstract class CartDS {
  Future<CartDetailsModel> getCartItems();
}

@Injectable(as: CartDS)
class CartDSImpl implements CartDS {
  @override
  Future<CartDetailsModel> getCartItems() async {
    Response response = await getIt<ApiManager>().getData(
        endPoint: EndPoints.cart,
        headers: {"token": SharedPreferencesService.getValue<String>("token")});

    CartDetailsModel cartModel = CartDetailsModel.fromJson(response.data);
    return cartModel;
  }
}
