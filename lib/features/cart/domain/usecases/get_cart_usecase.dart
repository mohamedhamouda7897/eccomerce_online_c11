import 'package:dartz/dartz.dart';
import 'package:ecommerce_online_c11/core/exceptions/failuers.dart';
import 'package:ecommerce_online_c11/features/cart/data/models/CartModel.dart';
import 'package:ecommerce_online_c11/features/cart/domain/repository/cart_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCartUseCase {
  CartRepo repo;

  GetCartUseCase(this.repo);

  Future<Either<RouteFailures, CartModel>> call() => repo.getCart();
}
