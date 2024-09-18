import 'package:dartz/dartz.dart';
import 'package:ecommerce_online_c11/core/exceptions/failuers.dart';
import 'package:ecommerce_online_c11/features/main_layout/home/data/models/category_model.dart';
import 'package:ecommerce_online_c11/features/product_details/data/models/AddToCartModel.dart';
import 'package:ecommerce_online_c11/features/products_screen/data/models/ProductModel.dart';

abstract class ProductDetailsRepo {
  Future<Either<RouteFailures, AddToCartModel>> addToCart(String prodId);
}
