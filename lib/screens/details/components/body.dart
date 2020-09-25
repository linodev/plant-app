import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linodev_plantapp_code01/constant.dart';

import 'IconCard.dart';
import 'Image_and_icons.dart';
import 'titleAndPrice.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          imageAndIcons(size: size),
          TitleAndPrice(
            title: "angelica",
            country: "russia",
            price: 440,
          ),
          SizedBox(height: Kdefultpadding),
          Row(
            children: [
              SizedBox(
                width: size.width/2,
                height: 85,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                    )
                  ),
                  color: kPrimaryColor,
                  onPressed: (){},
                  child: Text(
                    "Buy Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: (){},
                  child: Text(
                    "Description"
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}






