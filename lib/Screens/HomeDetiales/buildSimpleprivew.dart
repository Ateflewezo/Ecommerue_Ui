import 'package:ecommerce_ui/Models/Product.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../size_config.dart';

class Buildsimplepreview extends StatefulWidget {
  const Buildsimplepreview({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  _BuildsimplepreviewState createState() => _BuildsimplepreviewState();
}

class _BuildsimplepreviewState extends State<Buildsimplepreview> {
  @override
  int selectedimage = 0;
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(235),
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset(widget.product.images[selectedimage]),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
                widget.product.images.length, (index) => buildContainer(index))
          ],
        ),
      ],
    );
  }

  Widget buildContainer(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedimage = index;
        });
      },
      child: Container(
        margin: EdgeInsets.only(right: getProportionateScreenWidth(15)),
        padding: EdgeInsets.all(getProportionateScreenHeight(8)),
        height: getProportionateScreenWidth(48),
        width: getProportionateScreenWidth(48),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
                color: selectedimage == index
                    ? kPrimaryColor
                    : Colors.transparent)),
        child: Image.asset(widget.product.images[index]),
      ),
    );
  }
}