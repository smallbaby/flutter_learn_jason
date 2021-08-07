import 'package:fluter_learn_jason/constants.dart';
import 'package:fluter_learn_jason/screens/home/componets/featured_plants_list.dart';
import 'package:flutter/material.dart';

import 'header_with_searchbox.dart';
import 'recomends_plants.dart';
import 'title_with_more_bbtn.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: '推荐好物'),
          RecomendsPlants(),
          TitleWithMoreBtn(title: '猜你喜欢'),
          FeaturedPlants(),
          SizedBox(height: kDefaultPadding)
        ],
      ),
    );
  }
}
