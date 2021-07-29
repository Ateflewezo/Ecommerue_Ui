import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class DefultButtom extends StatelessWidget {
  const DefultButtom({
    Key key,
    this.text,
    this.press,
  }) : super(key: key);
  final String text;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child: FlatButton(
          onPressed: press,
          color: kPrimaryColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Text(
            text,
            style: TextStyle(
                color: Colors.white, fontSize: getProportionateScreenWidth(18)),
          )),
    );
  }
}