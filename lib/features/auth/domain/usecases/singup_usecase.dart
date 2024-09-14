import 'package:ecommerce_online_c11/features/auth/domain/entity/signUp_data.dart';
import 'package:ecommerce_online_c11/features/auth/domain/repository/auth_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class SignUpUseCase {
  AuthRepo repo;

  SignUpUseCase(this.repo);

  Future<bool> call(SignUpDataEntity entity) => repo.signUp(entity);
}
