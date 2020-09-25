import 'package:flutter/material.dart';

import '../../../constant.dart';



class featuredPlants extends StatelessWidget {
  const featuredPlants({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturedPlantCard(
            Image: "assets/pictures/bottom_img_1.png",
            press: (){},
          ),
          FeaturedPlantCard(
            Image: "assets/pictures/bottom_img_2.png",
            press: (){},
          ),
          FeaturedPlantCard(
            Image: "assets/pictures/bottom_img_1.png",
            press: (){},
          ),
        ],
      ),
    );
  }
}

class FeaturedPlantCard extends StatelessWidget {
  const FeaturedPlantCard({
    Key key, this.Image, this.press,
  }) : super(key: key);

  final String Image;
  final Function press;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
          left: Kdefultpadding,
          top: Kdefultpadding/2,
          bottom: Kdefultpadding /2,
        ),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(Image),
          ),
        ),
      ),
    );
  }
}