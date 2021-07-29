import 'package:ecommerce_ui/Models/Product.dart';
import 'package:ecommerce_ui/Screens/HomeDetiales/Detiales.dart';
import 'package:flutter/material.dart';

import '../../size_config.dart';
import 'ProductCard.dart';
import 'SpecialOffer.dart';

class PouplarProduct extends StatelessWidget {
  const PouplarProduct({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        ...List.generate(
          demoProducts.length,
          (index) {
            if (demoProducts[index].isPopular)
              return ProductCard(
                product: demoProducts[index],
                press: () {
                  Navigator.popAndPushNamed(
                    context,DetialesScrren.routname,arguments: ProductDetielasargment(demoProducts[index])
                  );
                },
              );

            return SizedBox.shrink(); // here by default width and height is 0
          },
        ),
        SizedBox(width: getProportionateScreenWidth(20)),
      ]),
    );
  }
}

class Speacial_Offer extends StatelessWidget {
  const Speacial_Offer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SpecialOffer(
            image: "assets/images/Image Banner 2.png",
            title: "SmartPhone",
            numberofbrand: "18 Brand",
            press: () {},
          ),
          SpecialOffer(
            image: "assets/images/Image Banner 3.png",
            title: "Fashone",
            numberofbrand: "18 Brand",
            press: () {},
          ),
        ],
      ),
    );
  }
}
