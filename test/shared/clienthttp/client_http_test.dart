import 'package:flutter_test/flutter_test.dart';
import 'package:teste_mobile_rd/shared/clienthttp/client_http.dart';
import 'package:teste_mobile_rd/shared/utils/utils.dart';

void main() {
  test("Verificação da configuração da URL da API", () {
    ClientHttp _clienthttp = new ClientHttp();
    expect(_clienthttp.getBaseUrl(), Utils.base_URL);
  });
}
