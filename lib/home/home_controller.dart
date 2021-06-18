import 'package:mobx/mobx.dart';
import 'package:teste_mobile_rd/home/models/super_hero_model.dart';
import 'repository/super_hero_repository.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  SuperHeroRepository repository = SuperHeroRepository();

  @observable
  ObservableList<SuperHero> _superHeroList = ObservableList<SuperHero>();

  @observable
  bool loading = true;

  @observable
  String filter = "";

  @action
  setLoading(bool value) => this.loading = value;

  @action
  changeSuperHeroList(ObservableList<SuperHero> list) =>
      this._superHeroList = list;

  @action
  void setFilter(String value) => filter = value;

  @computed
  List<SuperHero> get listSuperHeroFiltered {
    if (filter.isEmpty) {
      return _superHeroList;
    } else {
      return _superHeroList
          .where((element) =>
              element.name.toLowerCase().contains(filter.toLowerCase()))
          .toList();
    }
  }

  Future<void> getAllSuperHeros() async {
    setLoading(true);
    repository
        .getAllSuperHero()
        .then((value) => changeSuperHeroList(value.asObservable()))
        .whenComplete(() => setLoading(false));
  }
}
