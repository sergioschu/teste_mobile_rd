import 'package:flutter/material.dart';
import 'package:teste_mobile_rd/home/models/super_hero_model.dart';

class Connections extends StatelessWidget {
  final SuperHero heroItem;

  const Connections({Key key, @required this.heroItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: Text(
            "Team Affiliation".toUpperCase(),
            style: Theme.of(context).textTheme.caption.copyWith(
                  fontWeight: FontWeight.w500,
                ),
          ),
          subtitle: Text(
            heroItem.connections.groupAffiliation,
            style: TextStyle(
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        ListTile(
          title: Text(
            "Relatives".toUpperCase(),
            style: Theme.of(context).textTheme.caption.copyWith(
                  fontWeight: FontWeight.w500,
                ),
          ),
          subtitle: Text(
            heroItem.connections.relatives
                .toString()
                .replaceAll("[", "")
                .replaceAll("]", ""),
            style: TextStyle(
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        SizedBox(height: 10.0),
      ],
    );
  }
}
