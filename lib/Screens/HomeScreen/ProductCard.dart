import 'package:ecommerce_ui/Models/Product.dart';
import 'package:ecommerce_ui/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key key,
    @required this.press,
    @required this.product,
    this.width = 145,
  }) : super(key: key);
  final Product product;
  final double width;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child: GestureDetector(
        onTap: press,
              child: SizedBox(
          width: getProportionateScreenWidth(width),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 1.3,
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(10)),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: kSecondaryColor.withOpacity(0.3)),
                  child: Image.asset(product.images[0].toString()),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                product.title,
                style: TextStyle(color: Colors.black),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$" + product.price.toString(),
                    style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: getProportionateScreenWidth(2)),
                      height: getProportionateScreenHeight(20),
                      width: getProportionateScreenWidth(20),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: product.isFavourite
                              ? kPrimaryColor.withOpacity(0.15)
                              : kPrimaryColor.withOpacity(0.1)),
                      child: SvgPicture.asset(
                        "assets/icons/Heart Icon_2.svg",
                        color: product.isFavourite
                            ? Color(0xFFF4848)
                            : Color(0xFFDBDEE4),
                      )

                      //    assets/icons/Heart Icon_2.svg
                      )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
