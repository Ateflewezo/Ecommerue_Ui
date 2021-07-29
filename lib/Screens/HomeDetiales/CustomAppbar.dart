
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../size_config.dart';
import 'RoundIcon.dart';

class CustomAppBAR extends PreferredSize {
  final double rating;

  CustomAppBAR(this.rating);
  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
          vertical: getProportionateScreenWidth(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RoundIconData(
            icon: Icon(Icons.arrow_back_ios),
            press: () => Navigator.pop(context),
          ),
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(14), vertical: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child: Row(
              children: [
                Text(rating.toString()),
                const SizedBox(
                  width: 5,
                ),
                SvgPicture.asset("assets/icons/Star Icon.svg"),
              ],
            ),
          )
        ],
      ),
    ));
  }
}