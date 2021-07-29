import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';
import '../size_config.dart';

class DefulatTextFormFild extends StatelessWidget {
  const DefulatTextFormFild(
      {Key key,
      @required this.textInputType,
      @required this.labelText,
      @required this.hintText,
      @required this.svgIcon,
      this.obscureText = false,
      @required this.valided,
         @required this.onchange,
            @required this.onsaved
      
      })
      : super(key: key);
  final String labelText, hintText, svgIcon;
  final TextInputType textInputType;
  final Function valided;
    final Function onchange;
      final Function onsaved;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onsaved,
      validator: valided,
      onChanged: onchange,
      
      keyboardType: textInputType,
      obscureText: obscureText,
      decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenHeight(45),
              vertical: getProportionateScreenHeight(20)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(28),
              borderSide: BorderSide(color: kTextColor),
              gapPadding: 10),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(28),
              borderSide: BorderSide(color: kTextColor),
              gapPadding: 10),
              border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(28),
              borderSide: BorderSide(color: kTextColor),
              gapPadding: 10),
          suffixIcon: Padding(
            padding: EdgeInsets.fromLTRB(0, 20, 20, 20),
            child: SvgPicture.asset(
              svgIcon,
              height: getProportionateScreenHeight(20),
            ),
          )),
    );
  }
}
