import 'package:dio/dio.dart';
import 'package:ecommerce_online_c11/core/api/api_manager.dart';
import 'package:ecommerce_online_c11/core/api/end_points.dart';
import 'package:ecommerce_online_c11/core/api/status_codes.dart';
import 'package:ecommerce_online_c11/features/auth/data/dataSource/remote/auth_remote_ds.dart';

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
}
