import 'package:dartz/dartz.dart';
import 'package:ecommerce_online_c11/core/exceptions/failuers.dart';
import 'package:ecommerce_online_c11/features/product_details/data/data_sources/remote/products_ds.dart';
import 'package:ecommerce_online_c11/features/product_details/data/models/CartModel.dart';
import 'package:ecommerce_online_c11/features/product_details/domain/repositories/product_repo.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ProductDetailsRepo)
class ProductDetailsRepoImpl implements ProductDetailsRepo {
  ProductsDetailsDS productsDetailsDS;

  ProductDetailsRepoImpl(this.productsDetailsDS);

  @override
  Future<Either<RouteFailures, CartModel>> addToCart(String prodId) async {
    try {
      var result = await productsDetailsDS.addToCart(prodId);
      return Right(result);
    } catch (e) {
      return Left(RemoteFailures(e.toString()));
    }
  }
}
