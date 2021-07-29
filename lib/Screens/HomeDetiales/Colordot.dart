
import 'package:ecommerce_ui/Models/Product.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../size_config.dart';
import 'ProductDescription.dart';
import 'RoundIcon.dart';

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    int selected = 0;
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(15)),
      child: RoundCAontainer(
          color: Colors.white,
          child: Row(
            children: [
              ...List.generate(
                  product.colors.length,
                  (index) => buildContainer(
                      color: product.colors[index],
                      isSelected: selected == index)),
              Spacer(),
              RoundIconData(icon: Icon(Icons.remove), press: () {}),
              SizedBox(
                width: 5,
              ),
              RoundIconData(icon: Icon(Icons.add), press: () {})
            ],
          )),
    );
  }

  Container buildContainer({Color color, bool isSelected = false}) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      padding: EdgeInsets.all(10),
      height: getProportionateScreenWidth(40),
      width: getProportionateScreenWidth(40),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
              color: isSelected ? kPrimaryColor : Colors.transparent)),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}