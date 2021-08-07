import 'package:fluter_learn_jason/constants.dart';
import 'package:flutter/material.dart';

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Featuredplants(image: 'images/bottom_img_1.png'),
          Featuredplants(image: 'images/bottom_img_2.png'),
        ],
      ),
    );
  }
}

class Featuredplants extends StatelessWidget {
  const Featuredplants({
    Key? key,
    required this.image,
  }) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding / 2),
      width: size.width * 0.8,
      height: 185,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image)),
      ),
    );
  }
}
