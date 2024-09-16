import 'package:dartz/dartz.dart';
import 'package:ecommerce_online_c11/core/exceptions/failuers.dart';
import 'package:ecommerce_online_c11/features/main_layout/categories/data/data_sources/sub_category_ds.dart';
import 'package:ecommerce_online_c11/features/main_layout/categories/domain/repository/categoryTab_repo.dart';
import 'package:ecommerce_online_c11/features/main_layout/home/data/models/CategoryModel.dart';
import 'package:ecommerce_online_c11/features/products_screen/data/data_sources/product_ds.dart';
import 'package:ecommerce_online_c11/features/products_screen/data/models/AddToCartModel.dart';
import 'package:ecommerce_online_c11/features/products_screen/data/models/ProductModel.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ProductRepo)
class ProductRepoImpl implements ProductRepo {
  ProductsDS productsDS;

  ProductRepoImpl(this.productsDS);

  @override
  Future<Either<RouteFailures, ProductModel>> getProducts(String catId) async {
    try {
      var result = await productsDS.getProducts(catId);
      return Right(result);
    } catch (e) {
      print(e.toString());
      return Left(RemoteFailures(e.toString()));
    }
  }

  @override
  Future<Either<RouteFailures, AddToCartModel>> addToCart(String prodId) async {
    try {
      var result = await productsDS.addToCart(prodId);
      return Right(result);
    } catch (e) {
      print(e.toString());
      return Left(RemoteFailures(e.toString()));
    }
  }
}
