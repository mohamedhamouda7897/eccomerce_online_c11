import 'package:dartz/dartz.dart';
import 'package:ecommerce_online_c11/core/exceptions/failuers.dart';
import 'package:ecommerce_online_c11/features/auth/data/models/user_model.dart';
import 'package:ecommerce_online_c11/features/auth/domain/entity/sign_up_entity.dart';

abstract class AuthRepo {
  Future<Either<RouteFailures,bool>> signIn(String email, String password);
  Future<Either<RouteFailures,UserModel>> signUp(SignUpEntity signUpEntity);


}
