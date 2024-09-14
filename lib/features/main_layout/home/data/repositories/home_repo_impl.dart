import 'package:dartz/dartz.dart';
import 'package:ecommerce_online_c11/core/exceptions/failuers.dart';
import 'package:ecommerce_online_c11/features/main_layout/home/data/data_sources/home_ds.dart';
import 'package:ecommerce_online_c11/features/main_layout/home/data/models/category_Model.dart';
import 'package:ecommerce_online_c11/features/main_layout/home/domain/repositories/home_repo.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: HomeRepo)
class HomeRepoImpl implements HomeRepo {
  HomeDS homeDS;

  HomeRepoImpl(this.homeDS);

  @override
  Future<Either<RouteFailures, CategoryModel>> getCategories() async {
    try {
      var data = await homeDS.getCategories();
      return right(data);
    } catch (e) {
      return left(RemoteFailures(e.toString()));
    }
  }
}
