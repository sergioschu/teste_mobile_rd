import 'package:teste_mobile_rd/home/models/super_hero_model.dart';
import 'package:teste_mobile_rd/home/services/super_hero_service.dart';

class SuperHeroRepository {
  final SuperHeroService _superHeroService = SuperHeroService();

  Future<List<SuperHero>> getAllSuperHero() async {
    return await _superHeroService.getAllSuperHero();
  }
}
