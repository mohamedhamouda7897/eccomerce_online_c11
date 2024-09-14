import 'package:dartz/dartz.dart';
import 'package:ecommerce_online_c11/core/exceptions/failuers.dart';
import 'package:ecommerce_online_c11/features/products_screen/data/models/ProductModel.dart';

abstract class ProductRepo {
  Future<Either<RouteFailures, ProductModel>> getProducts(String catId);
}
