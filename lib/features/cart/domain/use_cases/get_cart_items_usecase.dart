import 'package:dartz/dartz.dart';
import 'package:ecommerce_online_c11/core/exceptions/failuers.dart';
import 'package:ecommerce_online_c11/features/cart/data/models/CartModel.dart';
import 'package:ecommerce_online_c11/features/cart/domain/repositories/cart_repo.dart';
import 'package:ecommerce_online_c11/features/product_details/data/models/AddToCartModel.dart';
import 'package:ecommerce_online_c11/features/product_details/domain/repositories/product_details_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCartItemsUseCase {
  CartRepo repository;

  GetCartItemsUseCase(this.repository);

  Future<Either<RouteFailures, CartModel>> call() => repository.getCartItems();
}
