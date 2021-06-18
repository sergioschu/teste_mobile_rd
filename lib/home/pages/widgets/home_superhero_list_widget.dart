import 'package:flutter/material.dart';
import 'package:teste_mobile_rd/home/models/super_hero_model.dart';
import 'package:teste_mobile_rd/home/pages/home_detail_page.dart';
import 'package:teste_mobile_rd/home/pages/widgets/avatar_widget.dart';
import 'package:teste_mobile_rd/shared/widgets/custom_search_widget.dart';

class SuperHeroListWidget extends StatelessWidget {
  final List<SuperHero> superHeroList;
  final void Function(String value) onSearchTextChanged;

  const SuperHeroListWidget(
      {Key key, this.superHeroList, this.onSearchTextChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomSearchWidget(
          onSearchTextChanged: this.onSearchTextChanged,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: superHeroList.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => HomeDetailPage(
                              superHero: superHeroList[index],
                            )));
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        SuperHeroAvatar(img: superHeroList[index].images.sm),
                        SizedBox(
                          width: 5.0,
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${superHeroList[index].name}",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              superHeroList[index].biography.fullName.isEmpty
                                  ? superHeroList[index].name
                                  : superHeroList[index].biography.fullName,
                            ),
                            Text("${superHeroList[index].slug}")
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
