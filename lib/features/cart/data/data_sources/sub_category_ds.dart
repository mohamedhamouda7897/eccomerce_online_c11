import 'package:ecommerce_online_c11/core/api/api_manager.dart';
import 'package:ecommerce_online_c11/core/api/end_points.dart';
import 'package:ecommerce_online_c11/core/cache/shared_pref.dart';
import 'package:ecommerce_online_c11/di.dart';
import 'package:ecommerce_online_c11/features/cart/data/models/CartModel.dart';
import 'package:ecommerce_online_c11/features/main_layout/home/data/models/CategoryModel.dart';
import 'package:injectable/injectable.dart';

abstract class CartDS {
  Future<CartModel> getCart();
}

@Injectable(as: CartDS)
class CartDSImpl implements CartDS {
  @override
  Future<CartModel> getCart() async {
    var response =
        await getIt<ApiManager>().getData(endPoint: EndPoints.cart, headers: {
      'token': SharedPreferencesService().getValue<String>('token'),
    });

    CartModel cartModel = CartModel.fromJson(response.data);
    return cartModel;
  }
}
