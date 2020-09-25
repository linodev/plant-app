import "package:flutter/material.dart";
import 'package:flutter_svg/svg.dart';

import '../../../constant.dart';



class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: Kdefultpadding * 2.5),
      height: size.height * 0.2,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              left: Kdefultpadding,
              right: Kdefultpadding,
              bottom: 36 + Kdefultpadding,
            ),
            // 20% tol safhe daryaft mishavad
            height: size.height * 0.2 - 27,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(27),
                  bottomRight: Radius.circular(27)
              ),
            ),
            child: Row(
              children: [
                Text(
                  'Hi Dear',
                  style: Theme.of(context).textTheme.headline5.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                //Image.asset("assets/images/logo.png"),// for your logo
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: Kdefultpadding),
              padding: EdgeInsets.symmetric(horizontal: Kdefultpadding),
              height: 54,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0,10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  )
                ],
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle: TextStyle(
                          color: kPrimaryColor.withOpacity(0.5),
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,

                      ),
                    ),
                  ),
                  SvgPicture.asset("assets/icons/ssearch.svg"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

