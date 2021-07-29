import 'package:ecommerce_ui/Screens/CartProduct/CartProduct.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';
import '../../size_config.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenHeight(20),
          vertical: getProportionateScreenHeight(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
              width: SizeConfig.screenWidth * 0.6,
              height: 60,
              decoration: BoxDecoration(
                  color: kSecondaryColor.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(20)),
              child: TextField(
                textAlign: TextAlign.center,
                onChanged: (value) => print(value),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(17),
                        vertical: getProportionateScreenWidth(9)),
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    hintText: "Search product",
                    prefixIcon: Icon(
                      Icons.search,
                      color: kSecondaryColor,
                    )),
              )),
          IconAppbar(
            svgIcon: "assets/icons/Cart Icon.svg",
            press: () {
              Navigator.pushNamed(context, CartProduct.routname);
            },
            numberOfitem: 0,
          ),
          IconAppbar(
            svgIcon: "assets/icons/Bell.svg",
            press: () {},
            numberOfitem: 3,
          ),
        ],
      ),
    );
  }
}

class IconAppbar extends StatelessWidget {
  const IconAppbar({
    Key key,
    @required this.svgIcon,
    @required this.press,
    this.numberOfitem,
  }) : super(key: key);
  final String svgIcon;
  final int numberOfitem;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(15),
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            height: getProportionateScreenHeight(45),
            width: getProportionateScreenWidth(45),
            decoration: BoxDecoration(
              color: kSecondaryColor.withOpacity(0.3),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(svgIcon),
          ),
          if (numberOfitem != 0)
            Positioned(
              right: -5,
              top: 0,
              child: Container(
                height: getProportionateScreenHeight(18),
                width: getProportionateScreenWidth(18),
                decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                    border: Border.all(color: kSecondaryColor, width: 0.5)),
                child: Text(
                  "${numberOfitem}",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
