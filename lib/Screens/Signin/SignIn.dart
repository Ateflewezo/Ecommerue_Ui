import 'package:ecommerce_ui/Compenents/NoAccount.dart';
import 'package:ecommerce_ui/Compenents/SoicalCard.dart';
import 'package:ecommerce_ui/Screens/SignUp/SignUpScreen.dart';
import 'package:ecommerce_ui/constants.dart';
import 'package:ecommerce_ui/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'SigninForm.dart';

class SignInScreen extends StatefulWidget {
  static String routname = "/SignInScreen";

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "SignIn",
          style: TextStyle(
              color: kSecondaryColor,
              fontSize: getProportionateScreenHeight(20)),
        ),
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20)),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    "Welcom Back",
                    style: TextStyle(
                        fontSize: getProportionateScreenHeight(30),
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "SignIn name and Password \n contuine in social media",
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: SizeConfig.screenHeight * 0.08,
                  ),
                  SigninForm(),
                  SizedBox(
                    height: SizeConfig.screenHeight * 0.08,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Socialcard(
                        svgIcon: "assets/icons/facebook-2.svg",
                        press: null,
                      ),
                      Socialcard(
                        svgIcon: "assets/icons/google-icon.svg",
                        press: null,
                      ),
                      Socialcard(
                        svgIcon: "assets/icons/twitter.svg",
                        press: null,
                      )
                    ],
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(20),
                  ),
                  NoAccount(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}




