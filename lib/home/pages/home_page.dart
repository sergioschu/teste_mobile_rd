import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:teste_mobile_rd/home/home_controller.dart';
import 'package:teste_mobile_rd/home/pages/widgets/home_superhero_list_widget.dart';
import 'package:teste_mobile_rd/shared/widgets/custom_waitining_widget.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeController _homeController = HomeController();

  @override
  void initState() {
    super.initState();
    _homeController.getAllSuperHeros();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title ?? ""),
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(Icons.refresh),
              onPressed: () {
                if (!_homeController.loading) {
                  _homeController.getAllSuperHeros();
                }
              }),
        ],
      ),
      body: Observer(builder: (BuildContext context) {
        return _homeController.loading
            ? CustomWaitingWidget(
                msg: "Aguarde, Buscando Dados!",
              )
            : SuperHeroListWidget(
                superHeroList: _homeController.listSuperHeroFiltered,
                onSearchTextChanged: _homeController.setFilter,
              );
      }),
    );
  }
}
