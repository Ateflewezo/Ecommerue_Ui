import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../size_config.dart';

class Socialcard extends StatelessWidget {
  const Socialcard({
    Key key,
    @required this.svgIcon,
    this.press,
  }) : super(key: key);
  final String svgIcon;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.all(getProportionateScreenWidth(10)),
        padding: EdgeInsets.all(getProportionateScreenWidth(12)),
        height: getProportionateScreenHeight(40),
        width: getProportionateScreenWidth(40),
        decoration:
            BoxDecoration(shape: BoxShape.circle, color: Color(0xfff5f6f9)),
        child: SvgPicture.asset(svgIcon),
      ),
    );
  }
}