import 'package:dio/dio.dart';

abstract class IClientHttp {
  Future<Response<T>> get<T>(String path);
}
