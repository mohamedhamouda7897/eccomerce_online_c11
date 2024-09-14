import 'package:dartz/dartz.dart';
import 'package:ecommerce_online_c11/core/exceptions/failuers.dart';
import 'package:ecommerce_online_c11/features/main_layout/home/data/models/category_Model.dart';

abstract class HomeRepo {
  Future<Either<RouteFailures, CategoryModel>> getCategories();
}
