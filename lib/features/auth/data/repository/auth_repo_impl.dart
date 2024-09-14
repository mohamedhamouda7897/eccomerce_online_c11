import 'package:dartz/dartz.dart';
import 'package:ecommerce_online_c11/core/exceptions/failuers.dart';
import 'package:ecommerce_online_c11/features/auth/data/dataSources/remote/auth_remote_ds.dart';
import 'package:ecommerce_online_c11/features/auth/domain/entity/signUp_data.dart';
import 'package:ecommerce_online_c11/features/auth/domain/repository/auth_repo.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRepo)
class AuthRepoImpl implements AuthRepo {
  AuthRemoteDS authRemoteDS;

  AuthRepoImpl(this.authRemoteDS);

  @override
  Future<bool> forgetPassword() {
    // TODO: implement forgetPassword
    throw UnimplementedError();
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
  Future<bool> signUp(SignUpDataEntity entity) async {
    try {
      bool loggedIn = await authRemoteDS.signUp(entity);
      return loggedIn;
    } catch (e) {
      return false;
    }
  }
}
