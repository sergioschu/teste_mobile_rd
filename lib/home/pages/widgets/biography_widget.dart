import 'package:flutter/material.dart';
import 'package:teste_mobile_rd/home/models/super_hero_model.dart';

class BiographyWidget extends StatelessWidget {
  final SuperHero heroItem;

  const BiographyWidget({Key key, @required this.heroItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: Text(
            "Alter Ego(s)".toUpperCase(),
            style: Theme.of(context).textTheme.caption.copyWith(
                  fontWeight: FontWeight.w500,
                ),
          ),
          subtitle: Text(
            heroItem.biography.alterEgos,
            style: TextStyle(
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        ListTile(
          title: Text(
            "Aliases".toUpperCase(),
            style: Theme.of(context).textTheme.caption.copyWith(
                  fontWeight: FontWeight.w500,
                ),
          ),
          subtitle: Text(
            heroItem.biography.aliases
                .toString()
                .replaceAll("[", "")
                .replaceAll("]", ""),
            style: TextStyle(fontWeight: FontWeight.w300),
          ),
        ),
        ListTile(
          title: Text(
            "Place of birth".toUpperCase(),
            style: Theme.of(context)
                .textTheme
                .caption
                .copyWith(fontWeight: FontWeight.w500),
          ),
          subtitle: Text(
            heroItem.biography.placeOfBirth,
            style: TextStyle(fontWeight: FontWeight.w300),
          ),
        ),
        ListTile(
          title: Text(
            "First Appearance".toUpperCase(),
            style: Theme.of(context)
                .textTheme
                .caption
                .copyWith(fontWeight: FontWeight.w500),
          ),
          subtitle: Text(
            heroItem.biography.firstAppearance,
            style: TextStyle(fontWeight: FontWeight.w300),
          ),
        ),
        ListTile(
          title: Text(
            "Creator".toUpperCase(),
            style: Theme.of(context)
                .textTheme
                .caption
                .copyWith(fontWeight: FontWeight.w500),
          ),
          subtitle: Text(
            heroItem.biography.publisher,
            style: TextStyle(fontWeight: FontWeight.w300),
          ),
        ),
      ],
    );
  }
}
