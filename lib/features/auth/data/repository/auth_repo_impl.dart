import 'package:dartz/dartz.dart';
import 'package:ecommerce_online_c11/core/exceptions/failuers.dart';
import 'package:ecommerce_online_c11/features/auth/data/dataSource/remote/auth_remote_ds.dart';
import 'package:ecommerce_online_c11/features/auth/domain/entity/signup_data_entity.dart';
import 'package:ecommerce_online_c11/features/auth/domain/repository/auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  AuthRemoteDS authRemoteDS;

  AuthRepoImpl(this.authRemoteDS);

  @override
  void forgetPassword() {
    // TODO: implement forgetPassword
  }

  @override
  Future<Either<RouteFailures, bool>> login(
      String email, String password) async {
    try {
      bool loggedIn = await authRemoteDS.login(email, password);

      return Right(loggedIn);
    } catch (e) {
      return Left(RemoteFailures(e.toString()));
    }
  }

  @override
  Future<Either<RouteFailures, bool>> signUp(SignUpDataEntity entity) async {
    try {
      bool loggedIn = await authRemoteDS.signUp(entity);

      return Right(loggedIn);
    } catch (e) {
      return Left(RemoteFailures(e.toString()));
    }
  }
}
