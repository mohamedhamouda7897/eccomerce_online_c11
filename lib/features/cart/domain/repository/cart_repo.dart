import 'package:dartz/dartz.dart';
import 'package:ecommerce_online_c11/core/exceptions/failuers.dart';
import 'package:ecommerce_online_c11/features/cart/data/models/CartModel.dart';
import 'package:ecommerce_online_c11/features/main_layout/home/data/models/CategoryModel.dart';
import 'package:ecommerce_online_c11/features/products_screen/data/models/AddToCartModel.dart';
import 'package:ecommerce_online_c11/features/products_screen/data/models/ProductModel.dart';

abstract class CartRepo {
  Future<Either<RouteFailures, CartModel>> getCart();
}
