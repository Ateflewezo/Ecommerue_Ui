import 'package:ecommerce_ui/enum.dart';
import 'package:ecommerce_ui/size_config.dart';
import 'package:flutter/material.dart';

import '../BottomNavBar.dart';
import 'Categories.dart';
import 'DisscundBanner.dart';
import 'HomeHeader.dart';

import 'SpeacialandProduct.dart';
import 'SpecialOffer.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "/home";
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: CustomBottomNavBar(
          selectedMenu: stateMenu.Home,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              HomeHeader(),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              Discoundbanner(),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              Categories(),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              Column(
                children: [
                  SpecialTitle(
                    text: "Special for You",
                    press: () {},
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(20),
                  ),
                  Speacial_Offer(),
                  SizedBox(
                    height: getProportionateScreenWidth(20),
                  ),
                  SpecialTitle(text: "PouplarProduct", press: () {}),
                  SizedBox(height: getProportionateScreenWidth(20)),
                  PouplarProduct()
                  //
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
