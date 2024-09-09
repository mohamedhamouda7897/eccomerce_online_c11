import 'package:dartz/dartz.dart';
import 'package:ecommerce_online_c11/core/exceptions/failuers.dart';
import 'package:ecommerce_online_c11/features/auth/domain/entity/signup_data_entity.dart';

abstract class AuthRepo {
  Future<Either<RouteFailures,bool>>login(String email, String password);

  void forgetPassword();

  Future<bool> signUp(SignUpDataEntity entity);
}
