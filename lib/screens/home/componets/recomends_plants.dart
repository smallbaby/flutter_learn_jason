import 'package:fluter_learn_jason/details/details_screen.dart';
import 'package:flutter/material.dart';

import 'recomend_plant_card.dart';

class RecomendsPlants extends StatelessWidget {
  const RecomendsPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecomendPlantCard(
            image: 'images/image_1.png',
            title: '仙人掌',
            country: '新疆',
            price: 50,
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DetailScreen()));
            },
          ),
          RecomendPlantCard(
            image: 'images/image_2.png',
            title: '绿植',
            country: '法国巴黎',
            price: 1200,
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DetailScreen()));
            },
          ),
          RecomendPlantCard(
            image: 'images/image_3.png',
            title: 'Samantha',
            country: 'Russia',
            price: 450,
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DetailScreen()));
            },
          ),
        ],
      ),
    );
  }
}
