import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl1 = 'https://www.googleapis.com/books/v1/';
  final Dio _dio;

  ApiService(this._dio);

  Future<Map<String,dynamic>>get({required String endPointUrl})async
  {
   var response = await _dio.get('$_baseUrl1$endPointUrl');

   return response.data;
  }
}
