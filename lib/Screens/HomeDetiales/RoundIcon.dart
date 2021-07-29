
import 'package:flutter/material.dart';

import '../../size_config.dart';

class RoundIconData extends StatelessWidget {
  const RoundIconData({
    Key key,
    @required this.icon,
    @required this.press,
  }) : super(key: key);
  final Icon icon;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenWidth(40),
      width: getProportionateScreenWidth(40),
      child: FlatButton(
          color: Colors.white,
          padding: EdgeInsets.zero,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          onPressed: press,
          child: icon),
    );
  }
}