import 'package:flutter/material.dart';
import 'package:linodev_plantapp_code01/screens/details/components/details_screen.dart';

import '../../../constant.dart';


class RecomendPlant extends StatelessWidget {
  const RecomendPlant({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          plantCard(
            image: "assets/pictures/image_1.png",
            title: "samnatha",
            country: "Russia",
            price: 440,
            press: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context)=> DetailsScreen(),
              ),);
            }
          ),
          plantCard(
            image: "assets/pictures/image_2.png",
            title: "samnatha",
            country: "Russia",
            price: 440,
            press: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context)=> DetailsScreen(),
              ),);
            },
          ),
          plantCard(
            image: "assets/pictures/image_3.png",
            title: "samnatha",
            country: "Russia",
            price: 440,
            press: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context)=> DetailsScreen(),
              ),);
            },
          ),
        ],
      ),
    );
  }
}

class plantCard extends StatelessWidget {
  const plantCard({
    Key key, this.image, this.title, this.country, this.price, this.press,
  }) : super(key: key);

  final String image , title , country;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: Kdefultpadding,
        top: Kdefultpadding,
        bottom: Kdefultpadding,
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(Kdefultpadding /2),

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0,10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                        children: [
                          TextSpan(
                            text: "$title\n".toUpperCase(),
                            style: Theme.of(context).textTheme.button,
                          ),
                          TextSpan(
                            text: "$country".toUpperCase(),
                            style: TextStyle(
                              color: kPrimaryColor.withOpacity(0.5),
                            ),
                          ),
                        ]
                    ),
                  ),
                  Spacer(),
                  Text(
                    '\$$price',style: Theme.of(context).textTheme.button.copyWith(color: kPrimaryColor),
                  ),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}