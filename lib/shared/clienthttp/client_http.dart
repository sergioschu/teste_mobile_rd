import 'package:dio/dio.dart';
import 'package:teste_mobile_rd/shared/utils/utils.dart';

import 'client_http_interface.dart';

class ClientHttp implements IClientHttp {
  Dio _client;

  ClientHttp() {
    _client = Dio(BaseOptions(baseUrl: Utils.base_URL));
  }

  String getBaseUrl() {
    return _client.options.baseUrl;
  }

  @override
  Future<Response<T>> get<T>(String path) {
    return _client.get(path);
  }
}
