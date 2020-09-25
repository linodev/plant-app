import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linodev_plantapp_code01/constant.dart';
import 'package:linodev_plantapp_code01/screens/home/components/title_with_more.dart';

import 'RecomendPlant.dart';
import 'featured_plants.dart';
import 'header_with_searchbox.dart';



class body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //enable scrolloing on small device
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: "Recomended",
          press: (){},
          ),
          RecomendPlant(),
          TitleWithMoreBtn(
            title: "Featured Plants",
            press: (){},
          ),
          featuredPlants(),
          SizedBox(height: Kdefultpadding,),
        ],
      ),
    );
  }
}










