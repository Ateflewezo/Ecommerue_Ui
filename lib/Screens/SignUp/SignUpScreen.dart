import 'package:ecommerce_ui/Compenents/FormsERROR.dart';
import 'package:ecommerce_ui/Compenents/SoicalCard.dart';
import 'package:ecommerce_ui/Compenents/defulatButton.dart';
import 'package:ecommerce_ui/Compenents/textfiled.dart';
import 'package:ecommerce_ui/Screens/CompleteProfile/CompleteProfile.dart';
import 'package:ecommerce_ui/size_config.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class SignUpScreen extends StatefulWidget {
  static String routname = "/Sign_up";

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "SignUp",
          style: TextStyle(
              color: kSecondaryColor,
              fontSize: getProportionateScreenHeight(20)),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenHeight(20), vertical: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "Register Account ",
                  style: TextStyle(
                      fontSize: getProportionateScreenHeight(25),
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      height: 1.8),
                ),
                Text(
                  "Complete Your Detiales or \n or Continue With social Media ",
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.08,
                ),
                RegisterForm()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RegisterForm extends StatefulWidget {
  const RegisterForm({Key key}) : super(key: key);

  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  @override
  String email;
  String password;
  String cofirmPassword;
  bool remember = false;
  final _formkey = GlobalKey<FormState>();
  final List<String> errors = [];
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        children: [
          DefulatTextFormFild(
            textInputType: TextInputType.emailAddress,
            labelText: "Email",
            hintText: "Enter YOUR Email",
            svgIcon: "assets/icons/Mail.svg",
            onsaved: (newValue) => email = newValue,
            onchange: (value) {
              if (value.isNotEmpty && errors.contains(kEmailNullError)) {
                setState(() {
                  errors.remove(kEmailNullError);
                });
              } else if (emailValidatorRegExp.hasMatch(value) &&
                  errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.remove(kInvalidEmailError);
                });
              }
              return null;
            },
            valided: (value) {
              if (value.isEmpty && !errors.contains(kEmailNullError)) {
                setState(() {
                  errors.add(kEmailNullError);
                });
                return "";
              } else if (!emailValidatorRegExp.hasMatch(value) &&
                  !errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.add(kInvalidEmailError);
                });
                return "";
              }
              return null;
            },
          ),
          SizedBox(
            height: getProportionateScreenHeight(25),
          ),
          DefulatTextFormFild(
            textInputType: TextInputType.number,
            labelText: "Password",
            hintText: "Enter YOUR Password",
            svgIcon: "assets/icons/Lock.svg",
            onsaved: (newvalue) => password = newvalue,
            onchange: (value) {
              if (value.isNotEmpty && errors.contains(kPassNullError)) {
                setState(() {
                  errors.remove(kPassNullError);
                });
              } else if (value.length >= 8 &&
                  errors.contains(kShortPassError)) {
                setState(() {
                  errors.remove(kShortPassError);
                });
              }
              return null;
            },
            valided: (value) {
              if (value.isEmpty && !errors.contains(kPassNullError)) {
                setState(() {
                  errors.add(kPassNullError);
                });
                return "";
              } else if (value.length < 8 &&
                  !errors.contains(kShortPassError)) {
                setState(() {
                  errors.add(kShortPassError);
                });
                return "";
              }
              return null;
            },
            obscureText: true,
          ),
          SizedBox(
            height: getProportionateScreenHeight(25),
          ),
          DefulatTextFormFild(
            textInputType: TextInputType.number,
            labelText: "ConfirmPasswor",
            hintText: "Re_enter Your Password ",
            svgIcon: "assets/icons/Lock.svg",
            onsaved: (newvalue) => cofirmPassword = newvalue,
            onchange: (value) {
              if (password == cofirmPassword) {
                setState(() {
                  errors.remove(kMatchPassError);
                });
              }
              return null;
            },
            valided: (value) {
              if (value.isEmpty) {
                return "";
              } else if (password != cofirmPassword) {
                setState(() {
                  errors.add(kMatchPassError);
                });
                return "";
              }
              return null;
            },
            obscureText: true,
          ),
          SizedBox(
            height: getProportionateScreenHeight(25),
          ),
          Formerrors(errors: errors),
          SizedBox(
            height: SizeConfig.screenHeight * 0.08,
          ),
          DefultButtom(
            text: "Continue",
            press: () {
              if (_formkey.currentState.validate()) {
                Navigator.popAndPushNamed(context, CompleteProfile.routname);
              }
            },
          ),
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
        ],
      ),
    );
  }
}
