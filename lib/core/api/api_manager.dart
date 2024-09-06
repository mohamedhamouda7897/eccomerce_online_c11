import 'package:dio/dio.dart';

class ApiManager {
  late Dio dio;

  ApiManager() {
    dio = Dio();
  }

  Future<Response> getData(
      {required String endPoint,
      Map<String, dynamic>? param,
      Map<String, dynamic>? headers}) async {
    return dio.get(baseUrl + endPoint,
        queryParameters: param, options: Options(headers: headers));
  }

  Future<Response> postData(
      {required String endPoint,
      required Map<String, dynamic> body,
      Map<String, dynamic>? headers}) async {
    return dio.post(baseUrl + endPoint,
        data: body, options: Options(headers: headers));
  }
}

const String baseUrl = "https://ecommerce.routemisr.com";
