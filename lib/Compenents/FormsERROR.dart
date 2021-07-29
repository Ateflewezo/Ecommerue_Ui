
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../size_config.dart';

class Formerrors extends StatelessWidget {
  const Formerrors({Key key, @required this.errors}) : super(key: key);
  final List<String> errors;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          errors.length, (index) => buildRow(error: errors[index])),
    );
  }

  Row buildRow({String error}) {
    return Row(
      children: [
        SvgPicture.asset(
          "assets/icons/Error.svg",
          height: getProportionateScreenHeight(18),
          width: getProportionateScreenWidth(18),
        ),
        SizedBox(width: getProportionateScreenWidth(20)),
        Text(error),
      ],
    );
  }
}
