

import 'package:flutter/material.dart';

import '../../size_config.dart';

class Discoundbanner extends StatelessWidget {
  const Discoundbanner({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(15)),
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
          vertical: getProportionateScreenWidth(15)),
      width: double.infinity,
      height: 90,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0XFF4A3298)),
      child: Text.rich(TextSpan(
          text: "Asummersurprise\n",
          style: TextStyle(color: Colors.white),
          children: [
            TextSpan(
                text: "CashBack 20%",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold))
          ])),
    );
  }
}