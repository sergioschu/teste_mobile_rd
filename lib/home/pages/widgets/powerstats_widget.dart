import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:teste_mobile_rd/home/models/super_hero_model.dart';

class PowerStats extends StatelessWidget {
  final SuperHero heroItem;

  const PowerStats({Key key, @required this.heroItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: Text(
            "Intelligence".toUpperCase() +
                " - ${heroItem.powerstats.intelligence}%",
            style: Theme.of(context).textTheme.caption.copyWith(
                  fontWeight: FontWeight.w500,
                ),
          ),
          subtitle: LinearPercentIndicator(
            animation: true,
            lineHeight: 15.0,
            animationDuration: 5000,
            percent: heroItem.powerstats.intelligence.toDouble() / 100.0,
            linearStrokeCap: LinearStrokeCap.roundAll,
            progressColor: Colors.blue,
          ),
        ),
        ListTile(
          title: Text(
            "Strength".toUpperCase() + " - ${heroItem.powerstats.strength}%",
            style: Theme.of(context).textTheme.caption.copyWith(
                  fontWeight: FontWeight.w500,
                ),
          ),
          subtitle: LinearPercentIndicator(
            animation: true,
            lineHeight: 15.0,
            animationDuration: 5000,
            percent: heroItem.powerstats.strength.toDouble() / 100.0,
            linearStrokeCap: LinearStrokeCap.roundAll,
            progressColor: Colors.orange,
          ),
        ),
        ListTile(
          title: Text(
            "Speed".toUpperCase() + " - ${heroItem.powerstats.speed}%",
            style: Theme.of(context).textTheme.caption.copyWith(
                  fontWeight: FontWeight.w500,
                ),
          ),
          subtitle: LinearPercentIndicator(
            animation: true,
            lineHeight: 15.0,
            animationDuration: 5000,
            percent: heroItem.powerstats.speed.toDouble() / 100.0,
            linearStrokeCap: LinearStrokeCap.roundAll,
            progressColor: Colors.green,
          ),
        ),
        ListTile(
          title: Text(
            "Durability".toUpperCase() +
                " - ${heroItem.powerstats.durability}%",
            style: Theme.of(context).textTheme.caption.copyWith(
                  fontWeight: FontWeight.w500,
                ),
          ),
          subtitle: LinearPercentIndicator(
            animation: true,
            lineHeight: 15.0,
            animationDuration: 5000,
            percent: heroItem.powerstats.durability.toDouble() / 100.0,
            linearStrokeCap: LinearStrokeCap.roundAll,
            progressColor: Colors.orangeAccent,
          ),
        ),
        ListTile(
          title: Text(
            "Power".toUpperCase() + " - ${heroItem.powerstats.power}%",
            style: Theme.of(context).textTheme.caption.copyWith(
                  fontWeight: FontWeight.w500,
                ),
          ),
          subtitle: LinearPercentIndicator(
            animation: true,
            lineHeight: 15.0,
            animationDuration: 5000,
            percent: heroItem.powerstats.power.toDouble() / 100.0,
            linearStrokeCap: LinearStrokeCap.roundAll,
            progressColor: Colors.red,
          ),
        ),
        ListTile(
          title: Text(
            "Combat".toUpperCase() + " - ${heroItem.powerstats.combat}%",
            style: Theme.of(context).textTheme.caption.copyWith(
                  fontWeight: FontWeight.w500,
                ),
          ),
          subtitle: LinearPercentIndicator(
            animation: true,
            lineHeight: 15.0,
            animationDuration: 5000,
            percent: heroItem.powerstats.combat.toDouble() / 100.0,
            linearStrokeCap: LinearStrokeCap.roundAll,
            progressColor: Colors.black,
          ),
        ),
      ],
    );
  }
}
