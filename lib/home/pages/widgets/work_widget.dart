import 'package:flutter/material.dart';
import 'package:teste_mobile_rd/home/models/super_hero_model.dart';

class Work extends StatelessWidget {
  final SuperHero heroItem;

  const Work({Key key, @required this.heroItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "Base".toUpperCase(),
        style: Theme.of(context)
            .textTheme
            .caption
            .copyWith(fontWeight: FontWeight.w500),
      ),
      subtitle: Text(
        heroItem.work.base,
        style: TextStyle(fontWeight: FontWeight.w300),
      ),
    );
  }
}
