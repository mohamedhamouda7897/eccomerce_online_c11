import 'package:dartz/dartz.dart';
import 'package:ecommerce_online_c11/core/exceptions/failuers.dart';
import 'package:ecommerce_online_c11/features/product_details/data/models/CartModel.dart';
import 'package:ecommerce_online_c11/features/products_screen/data/models/ProductModel.dart';

abstract class ProductDetailsRepo {
  Future<Either<RouteFailures, CartModel>> addToCart(String prodId);
}
