import 'package:flutter/material.dart';
import 'package:teste_mobile_rd/home/models/super_hero_model.dart';

import 'widgets/appearance_widget.dart';
import 'widgets/avatar_widget.dart';
import 'widgets/biography_widget.dart';
import 'widgets/connections_widget.dart';
import 'widgets/powerstats_widget.dart';
import 'widgets/work_widget.dart';

class HomeDetailPage extends StatefulWidget {
  final SuperHero superHero;
  const HomeDetailPage({Key key, this.superHero}) : super(key: key);

  @override
  _HomeDetailPageState createState() => _HomeDetailPageState();
}

class _HomeDetailPageState extends State<HomeDetailPage> {
  Map<String, bool> _categoryExpansionStateMap = Map<String, bool>();

  @override
  void initState() {
    super.initState();

    _categoryExpansionStateMap = {
      "Biography": true,
      "Appearance": false,
      "Work": false,
      "Power Stats": false,
      "Connections": false,
    };
  }

  @override
  Widget build(BuildContext context) {
    return widget.superHero == null
        ? Container(
            child: Text("Não há Super Heroi"),
          )
        : Scaffold(
            appBar: AppBar(
              title: Text("${widget.superHero.name} detail"),
            ),
            body: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(16.0),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: <Widget>[
                    Hero(
                      tag: widget.superHero.id,
                      child: SuperHeroAvatar(
                        img: widget.superHero.images.md,
                        radius: 50.0,
                      ),
                    ),
                    SizedBox(
                      height: 13.0,
                    ),
                    Text(
                      widget.superHero.name,
                    ),
                    Text(
                      widget.superHero.biography.fullName.isEmpty
                          ? widget.superHero.name
                          : widget.superHero.biography.fullName,
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    ExpansionPanelList(
                      expansionCallback: (int index, bool isExpanded) {
                        setState(() {
                          _categoryExpansionStateMap[_categoryExpansionStateMap
                              .keys
                              .toList()[index]] = !isExpanded;
                        });
                      },
                      children: <ExpansionPanel>[
                        ExpansionPanel(
                            headerBuilder:
                                (BuildContext context, bool isExpanded) {
                              return ListTile(
                                  title: Text(
                                "Biography",
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ));
                            },
                            body: BiographyWidget(
                              heroItem: widget.superHero,
                            ),
                            isExpanded:
                                _categoryExpansionStateMap["Biography"]),
                        ExpansionPanel(
                            headerBuilder:
                                (BuildContext context, bool isExpanded) {
                              return ListTile(
                                  title: Text(
                                "Appearance",
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ));
                            },
                            body: Appearance(
                              heroItem: widget.superHero,
                            ),
                            isExpanded:
                                _categoryExpansionStateMap["Appearance"]),
                        ExpansionPanel(
                            headerBuilder:
                                (BuildContext context, bool isExpanded) {
                              return ListTile(
                                  title: Text(
                                "Work",
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ));
                            },
                            body: Work(
                              heroItem: widget.superHero,
                            ),
                            isExpanded: _categoryExpansionStateMap["Work"]),
                        ExpansionPanel(
                            headerBuilder:
                                (BuildContext context, bool isExpanded) {
                              return ListTile(
                                  title: Text(
                                "Power Stats",
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ));
                            },
                            body: PowerStats(
                              heroItem: widget.superHero,
                            ),
                            isExpanded:
                                _categoryExpansionStateMap["Power Stats"]),
                        ExpansionPanel(
                            headerBuilder:
                                (BuildContext context, bool isExpanded) {
                              return ListTile(
                                  title: Text(
                                "Connections",
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ));
                            },
                            body: Connections(
                              heroItem: widget.superHero,
                            ),
                            isExpanded:
                                _categoryExpansionStateMap["Connections"]),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
  }
}
