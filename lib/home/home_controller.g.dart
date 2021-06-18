// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  Computed<List<SuperHero>> _$listSuperHeroFilteredComputed;

  @override
  List<SuperHero> get listSuperHeroFiltered =>
      (_$listSuperHeroFilteredComputed ??= Computed<List<SuperHero>>(
              () => super.listSuperHeroFiltered,
              name: '_HomeControllerBase.listSuperHeroFiltered'))
          .value;

  final _$_superHeroListAtom = Atom(name: '_HomeControllerBase._superHeroList');

  @override
  ObservableList<SuperHero> get _superHeroList {
    _$_superHeroListAtom.reportRead();
    return super._superHeroList;
  }

  @override
  set _superHeroList(ObservableList<SuperHero> value) {
    _$_superHeroListAtom.reportWrite(value, super._superHeroList, () {
      super._superHeroList = value;
    });
  }

  final _$loadingAtom = Atom(name: '_HomeControllerBase.loading');

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  final _$filterAtom = Atom(name: '_HomeControllerBase.filter');

  @override
  String get filter {
    _$filterAtom.reportRead();
    return super.filter;
  }

  @override
  set filter(String value) {
    _$filterAtom.reportWrite(value, super.filter, () {
      super.filter = value;
    });
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  dynamic setLoading(bool value) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.setLoading');
    try {
      return super.setLoading(value);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeSuperHeroList(ObservableList<SuperHero> list) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.changeSuperHeroList');
    try {
      return super.changeSuperHeroList(list);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
loading: ${loading},
filter: ${filter},
listSuperHeroFiltered: ${listSuperHeroFiltered}
    ''';
  }
}
