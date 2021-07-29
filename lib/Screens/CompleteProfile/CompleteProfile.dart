import 'package:ecommerce_ui/Compenents/FormsERROR.dart';
import 'package:ecommerce_ui/Compenents/SoicalCard.dart';
import 'package:ecommerce_ui/Compenents/defulatButton.dart';
import 'package:ecommerce_ui/Compenents/textfiled.dart';
import 'package:ecommerce_ui/Screens/CompleteProfile/Otp.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../size_config.dart';

class CompleteProfile extends StatefulWidget {
  static String routname = "/CompleteProfile";
  @override
  _CompleteProfileState createState() => _CompleteProfileState();
}

class _CompleteProfileState extends State<CompleteProfile> {
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
                  "Complete Profile",
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
  String firstname, lastname, phone, address;
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
            labelText: "Firstname",
            hintText: "Enter YOUR firstname",
            svgIcon: "assets/icons/User.svg",
            onsaved: (newValue) => firstname = newValue,
            onchange: (value) {
              if (value.isNotEmpty && errors.contains(kNamelNullError)) {
                setState(() {
                  errors.remove(kNamelNullError);
                });
              }
              return null;
            },
            valided: (value) {
              if (value.isEmpty && !errors.contains(kNamelNullError)) {
                setState(() {
                  errors.add(kNamelNullError);
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
            textInputType: TextInputType.text,
            labelText: "Lastname",
            hintText: "Enter YOUR Lastname",
            svgIcon: "assets/icons/User.svg",
            onsaved: (newvalue) => lastname = newvalue,
            onchange: (value) {
              if (value.isNotEmpty && errors.contains(klastNamelNullError)) {
                setState(() {
                  errors.remove(klastNamelNullError);
                });
              }
              return null;
            },
            valided: (value) {
              if (value.isEmpty && !errors.contains(klastNamelNullError)) {
                setState(() {
                  errors.add(klastNamelNullError);
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
            labelText: "phoneNumber",
            hintText: "Re_enter Your phoneNumber ",
            svgIcon: "assets/icons/Phone.svg",
            onsaved: (newvalue) => phone = newvalue,
            onchange: (value) {
              if (value.isNotEmpty && errors.contains(kPhoneNumberNullError)) {
                setState(() {
                  errors.remove(kPhoneNumberNullError);
                });
              }
              return null;
            },
            valided: (value) {
              if (value.isEmpty && !errors.contains(kPhoneNumberNullError)) {
                setState(() {
                  errors.add(kPhoneNumberNullError);
                });
                return "";
              }
              return null;
            },
            obscureText: false,
          ),
          SizedBox(
            height: getProportionateScreenHeight(25),
          ),
          DefulatTextFormFild(
            textInputType: TextInputType.text,
            labelText: "address",
            hintText: "Re_enter Your address ",
            svgIcon: "assets/icons/Location point.svg",
            onsaved: (newvalue) => address = newvalue,
            onchange: (value) {
              if (value.isNotEmpty && errors.contains(kAddressNullError)) {
                setState(() {
                  errors.remove(kAddressNullError);
                });
              }
              return null;
            },
            valided: (value) {
              if (value.isEmpty && !errors.contains(kAddressNullError)) {
                setState(() {
                  errors.add(kAddressNullError);
                });
                return "";
              }
              return null;
            },
            obscureText: false,
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Formerrors(errors: errors),
          SizedBox(
            height: SizeConfig.screenHeight * 0.04,
          ),
          DefultButtom(
            text: "Continue",
            press: () {
              if (_formkey.currentState.validate()) {
            Navigator.popAndPushNamed(context, OtpScreen.routename);
              }
            },
          ),
          SizedBox(
            height: SizeConfig.screenHeight * 0.04,
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
