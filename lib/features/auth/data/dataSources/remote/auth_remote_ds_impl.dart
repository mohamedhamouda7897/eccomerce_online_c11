import 'package:dio/dio.dart';
import 'package:ecommerce_online_c11/core/api/api_manager.dart';
import 'package:ecommerce_online_c11/core/api/end_points.dart';
import 'package:ecommerce_online_c11/core/api/status_codes.dart';
import 'package:ecommerce_online_c11/features/auth/data/dataSources/remote/auth_remote_ds.dart';
import 'package:ecommerce_online_c11/features/auth/domain/entity/signUp_data.dart';

class AuthRemoteDSImpl implements AuthRemoteDS {
  ApiManager apiManager;

  AuthRemoteDSImpl(this.apiManager);

  @override
  Future<bool> login(String email, String password) async {
    Response response = await apiManager.postData(
      endPoint: EndPoints.login,
      body: {
        "email": email,
        "password": password,
      },
    );

    print(response.data);
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

    if (response.statusCode == StatusCodes.success) {
      return true;
    } else {
      return false;
    }
  }
}
