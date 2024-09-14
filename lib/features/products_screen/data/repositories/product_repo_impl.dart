import 'package:dartz/dartz.dart';
import 'package:ecommerce_online_c11/core/exceptions/failuers.dart';
import 'package:ecommerce_online_c11/features/products_screen/data/data_sources/remote/products_ds.dart';
import 'package:ecommerce_online_c11/features/products_screen/data/models/ProductModel.dart';
import 'package:ecommerce_online_c11/features/products_screen/domain/repositories/product_repo.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ProductRepo)
class ProductRepoImpl implements ProductRepo {
  ProductsDS productsRemoteDS;

  ProductRepoImpl(this.productsRemoteDS);

  @override
  Future<Either<RouteFailures, ProductModel>> getProducts(String catId) async {
    try {
      var result = await productsRemoteDS.getProducts(catId);
      return Right(result);
    } catch (e) {
      return Left(RemoteFailures(e.toString()));
    }
  }
}
