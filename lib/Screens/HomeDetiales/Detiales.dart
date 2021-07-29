import 'package:ecommerce_ui/Compenents/defulatButton.dart';
import 'package:ecommerce_ui/Models/Product.dart';

import 'package:ecommerce_ui/size_config.dart';

import 'package:flutter/material.dart';

import 'Colordot.dart';
import 'CustomAppbar.dart';
import 'ProductDescription.dart';
import 'buildSimpleprivew.dart';

class DetialesScrren extends StatelessWidget {
  static String routname = "/Detailes";

  @override
  Widget build(BuildContext context) {
    final ProductDetielasargment argment =
        ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: Color(0XFFF5F6F9),
      appBar: CustomAppBAR(argment.product.rating),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Buildsimplepreview(product: argment.product),
            ProductDescription(product: argment.product),
            ColorDot(product: argment.product),
            RoundCAontainer(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(35),
                      vertical: getProportionateScreenWidth(15)),
                  child: DefultButtom(
                    text: "AddTo chart",
                    press: () {},
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

// argment class to pass data in screen
class ProductDetielasargment {
  final Product product;

  ProductDetielasargment(this.product);
}
