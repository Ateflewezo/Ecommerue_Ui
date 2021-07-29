


import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';
import '../enum.dart';
import 'HomeScreen/Home.dart';
import 'Porfile/Profile.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key key,
    @required this.selectedMenu,
  }) : super(key: key);
  final stateMenu selectedMenu;
  @override
  Widget build(BuildContext context) {
    final Color inactivecolor = Color(0xffB6B6B6);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 18),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, -15),
                blurRadius: 20,
                color: Color(0xffDADADA).withOpacity(0.15))
          ]),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/Shop Icon.svg",
                  color: stateMenu.Home == selectedMenu
                      ? kPrimaryColor
                      : inactivecolor,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, HomeScreen.routeName);
                }),
            IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/Heart Icon.svg",
                  color: stateMenu.Favourt == selectedMenu
                      ? kPrimaryColor
                      : inactivecolor,
                ),
                onPressed: () {}),
            IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/Chat bubble Icon.svg",
                  color: stateMenu.Message == selectedMenu
                      ? kPrimaryColor
                      : inactivecolor,
                ),
                onPressed: () {}),
            IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/User Icon.svg",
                  color: stateMenu.Profile == selectedMenu
                      ? kPrimaryColor
                      : inactivecolor,
                ),
                onPressed: () {
                    Navigator.pushNamed(context, Profile.routname);
                }),
          ],
        ),
      ),
    );
  }
}