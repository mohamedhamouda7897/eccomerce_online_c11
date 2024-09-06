import 'package:dartz/dartz.dart';
import 'package:ecommerce_online_c11/core/exceptions/failuers.dart';
import 'package:ecommerce_online_c11/features/auth/domain/entity/signUp_data.dart';

abstract class AuthRepo {
  Future<Either<RouteFailures, bool>> login(String email, String password);

  Future<bool> signUp(SignUpDataEntity entity);

  Future<bool> forgetPassword();
}
