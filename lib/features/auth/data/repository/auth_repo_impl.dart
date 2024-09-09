import 'package:dartz/dartz.dart';
import 'package:ecommerce_online_c11/core/exceptions/failuers.dart';
import 'package:ecommerce_online_c11/features/auth/data/data_source/remote/auth_remote_ds.dart';
import 'package:ecommerce_online_c11/features/auth/data/models/user_model.dart';
import 'package:ecommerce_online_c11/features/auth/domain/entity/sign_up_entity.dart';
import 'package:ecommerce_online_c11/features/auth/domain/repository/auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  AuthRemoteDs authRemoteDs;

  AuthRepoImpl(this.authRemoteDs);

  @override
  Future<Either<RouteFailures, bool>> signIn(
      String email, String password) async {
    try {
      bool loggedIn = await authRemoteDs.signIn(email, password);

      if (!loggedIn) {
        return Left(
            RouteInvalidCredtionalFailures("Invalid username Or password"));
      }
      return Right(loggedIn);
    } catch (e) {
      return Left(RouteRemoteFailures(e.toString()));
    }
  }

  @override
  Future<Either<RouteFailures, UserModel>> signUp(
      SignUpEntity signUpEntity) async {
    try {
      var userModel = await authRemoteDs.signUp(signUpEntity);

      print(userModel);
      return Right(userModel);
    } catch (e) {
      return Left(RouteRemoteFailures(e.toString()));
    }
  }
}
