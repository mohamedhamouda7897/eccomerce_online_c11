import 'package:dartz/dartz.dart';
import 'package:ecommerce_online_c11/core/exceptions/failuers.dart';
import 'package:ecommerce_online_c11/features/cart/data/data_sources/sub_category_ds.dart';
import 'package:ecommerce_online_c11/features/cart/data/models/CartModel.dart';
import 'package:ecommerce_online_c11/features/cart/domain/repository/cart_repo.dart';
import 'package:ecommerce_online_c11/features/main_layout/categories/data/data_sources/sub_category_ds.dart';
import 'package:ecommerce_online_c11/features/main_layout/categories/domain/repository/categoryTab_repo.dart';
import 'package:ecommerce_online_c11/features/main_layout/home/data/models/CategoryModel.dart';
import 'package:ecommerce_online_c11/features/products_screen/domain/repository/products_repo.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CartRepo)
class CartRepoImpl implements CartRepo {
  CartDS cartDS;

  CartRepoImpl(this.cartDS);

  @override
  Future<Either<RouteFailures, CartModel>> getCart() async {
    try {
      var result = await cartDS.getCart();
      return Right(result);
    } catch (e) {
      return Left(RemoteFailures(e.toString()));
    }
  }
}
