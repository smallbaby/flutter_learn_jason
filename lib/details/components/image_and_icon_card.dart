import 'package:fluter_learn_jason/constants.dart';
import 'package:fluter_learn_jason/details/components/icon_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImageAndIconCard extends StatelessWidget {
  const ImageAndIconCard({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding * 3),
      child: SizedBox(
        height: size.height * 0.8,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        padding:
                            EdgeInsets.symmetric(horizontal: kDefaultPadding),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: SvgPicture.asset('images/back_arrow.svg'),
                      ),
                    ),
                    Spacer(),
                    IconCard(image: 'images/sun.svg'),
                    IconCard(image: 'images/icon_2.svg'),
                    IconCard(image: 'images/icon_3.svg'),
                    IconCard(image: 'images/icon_4.svg'),
                  ],
                ),
              ),
            ),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(63),
                    bottomLeft: Radius.circular(63),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 60,
                      color: kPrimaryColor.withOpacity(0.29),
                    ),
                  ],
                  image: DecorationImage(
                      alignment: Alignment.centerLeft,
                      fit: BoxFit.cover,
                      image: AssetImage('images/img.png'))),
            ),
          ],
        ),
      ),
    );
  }
}
