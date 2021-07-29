import 'package:ecommerce_ui/Models/Product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';
import '../../size_config.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return RoundCAontainer(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(15)),
            child: Text(product.title),
          ),
          SizedBox(
            height: 5,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              padding: EdgeInsets.all(10),
              height: getProportionateScreenWidth(45),
              width: getProportionateScreenWidth(45),
              decoration: BoxDecoration(
                  color: product.isFavourite
                      ? kPrimaryColor.withOpacity(0.3)
                      : Color(0XFFF5F6F9),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15))),
              child: SvgPicture.asset(
                "assets/icons/Heart Icon_2.svg",
                color: product.isFavourite
                    ? Colors.red
                    : Colors.transparent,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20),
                vertical: 10),
            child: Text(
              product.description,
              maxLines: 2,
            ),
          ),
          Row(
            children: [
              Text(
                "See More Detailes ....",
                style: TextStyle(color: kPrimaryColor),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 20,
                color: kPrimaryColor,
              )
            ],
          )
        ],
      ),
    );
  }
}

class RoundCAontainer extends StatelessWidget {
  const RoundCAontainer({
    Key key,
    @required this.color,
    @required this.child,
  }) : super(key: key);
  final Color color;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: getProportionateScreenWidth(20)),
      padding: EdgeInsets.only(top: getProportionateScreenWidth(20)),
      width: double.infinity,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40))),
      child: child,
    );
  }
}