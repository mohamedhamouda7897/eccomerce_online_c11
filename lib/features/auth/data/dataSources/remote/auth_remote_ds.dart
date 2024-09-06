import 'package:ecommerce_online_c11/features/auth/domain/entity/signUp_data.dart';

abstract class AuthRemoteDS{


 Future<bool> login(String email,String password);
 Future<bool> signUp(SignUpDataEntity entity);
}