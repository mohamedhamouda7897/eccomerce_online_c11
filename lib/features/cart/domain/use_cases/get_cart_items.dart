import 'package:dartz/dartz.dart';
import 'package:ecommerce_online_c11/core/exceptions/failuers.dart';
import 'package:ecommerce_online_c11/features/cart/data/models/CartDetailsModel.dart';
import 'package:ecommerce_online_c11/features/cart/domain/repositories/product_repo.dart';
import 'package:ecommerce_online_c11/features/product_details/data/models/CartModel.dart';
import 'package:ecommerce_online_c11/features/product_details/domain/repositories/product_repo.dart';
import 'package:ecommerce_online_c11/features/products_screen/data/models/ProductModel.dart';
import 'package:ecommerce_online_c11/features/products_screen/domain/repositories/product_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCartItemsUseCase {
  CartRepo repo;

  GetCartItemsUseCase(this.repo);

  Future<Either<RouteFailures, CartDetailsModel>> call() => repo.getCartItems();
}
