import 'package:dio/dio.dart';
import 'package:ecommerce_online_c11/core/api/api_manager.dart';
import 'package:ecommerce_online_c11/core/api/end_points.dart';
import 'package:ecommerce_online_c11/core/api/status_codes.dart';
import 'package:ecommerce_online_c11/core/cache/shared_pref.dart';
import 'package:ecommerce_online_c11/features/auth/data/dataSource/remote/auth_remote_ds.dart';
import 'package:ecommerce_online_c11/features/auth/domain/entity/signup_data_entity.dart';

class AuthRemoteDSImpl implements AuthRemoteDS {
  ApiManager apiManager;

  AuthRemoteDSImpl(this.apiManager);

  @override
  Future<bool> login(String email, String password) async {
    Response response = await apiManager.postData(
        endPoint: EndPoints.login,
        body: {"email": email, "password": password});

    if (response.statusCode == StatusCodes.success) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Future<bool> signUp(SignUpDataEntity entity) async {
    Response response = await apiManager.postData(
        endPoint: EndPoints.signUp, body: entity.toJson());

    SharedPreferencesService().setValue<String>('token', response.data['token']);
    if (response.statusCode == StatusCodes.success) {
      return true;
    } else {
      return false;
    }
  }
}
