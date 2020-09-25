import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constant.dart';
import 'IconCard.dart';

class imageAndIcons extends StatelessWidget {
  const imageAndIcons({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: Kdefultpadding * 3),
      child: SizedBox(
        height: size.height * 0.8,
        child: Row(
          children: [
            Expanded(

              child: Padding(
                padding: EdgeInsets.symmetric(vertical: Kdefultpadding * 3),
                child: Column(
                  children: [

                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        padding: EdgeInsets.symmetric(horizontal: Kdefultpadding),
                        icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
                        onPressed: (){
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Spacer(),
                    IconCard(
                      Icons: "assets/icons/sun.svg",
                    ),
                    IconCard(
                      Icons: "assets/icons/icon_2.svg",
                    ),
                    IconCard(
                      Icons: "assets/icons/icon_3.svg",
                    ),
                    IconCard(
                      Icons: "assets/icons/icon_4.svg",
                    ),
                  ],
                ),
              ),

            ),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(65),
                  bottomLeft: Radius.circular(65),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0,10),
                    blurRadius: 60,
                    color: kPrimaryColor.withOpacity(0.30),
                  ),
                ],
                image: DecorationImage(
                  alignment: Alignment.centerLeft,
                  fit: BoxFit.cover,
                  image: AssetImage(
                      "assets/pictures/img.png"
                  ),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}