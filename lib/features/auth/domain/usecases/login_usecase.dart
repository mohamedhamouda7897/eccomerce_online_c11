import 'package:dartz/dartz.dart';
import 'package:ecommerce_online_c11/core/exceptions/failuers.dart';
import 'package:ecommerce_online_c11/features/auth/domain/repository/auth_repo.dart';

class LoginUseCase {
  AuthRepo repo;

  LoginUseCase(this.repo);

  Future<Either<RouteFailures, bool>> call(String email, String password) =>
      repo.login(email, password);
}
