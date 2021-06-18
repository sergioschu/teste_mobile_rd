import 'package:teste_mobile_rd/home/models/super_hero_model.dart';
import 'package:teste_mobile_rd/shared/clienthttp/client_http.dart';

class SuperHeroService {
  final ClientHttp _clientHttp = ClientHttp();

  Future<List<SuperHero>> getAllSuperHero() async {
    final response = await _clientHttp.get('all.json');
    return (response.data as List).map((e) => SuperHero.fromJson(e)).toList();
  }
}
