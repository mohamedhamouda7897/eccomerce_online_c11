import 'package:dartz/dartz.dart';
import 'package:ecommerce_online_c11/core/exceptions/failuers.dart';
import 'package:ecommerce_online_c11/features/main_layout/categories/data/data_sources/category_ds.dart';
import 'package:ecommerce_online_c11/features/main_layout/categories/domain/repositories/category_repo.dart';
import 'package:ecommerce_online_c11/features/main_layout/home/data/models/category_model.dart';
import 'package:ecommerce_online_c11/features/products_screen/data/data_sources/product_ds.dart';
import 'package:ecommerce_online_c11/features/products_screen/data/models/ProductModel.dart';
import 'package:ecommerce_online_c11/features/products_screen/domain/repositories/product_repo.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ProductRepo)
class ProductRepoImpl implements ProductRepo {
  ProductDS productDS;

  ProductRepoImpl(this.productDS);

  @override
  Future<Either<RouteFailures, ProductModel>> getProducts(String catId) async {
    try {
      var data = await productDS.getProducts(catId);
      return Right(data);
    } catch (e) {
      return Left(RouteRemoteFailures(e.toString()));
    }
  }
}
