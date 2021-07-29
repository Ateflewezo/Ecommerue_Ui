import 'package:ecommerce_ui/Compenents/FormsERROR.dart';
import 'package:ecommerce_ui/Compenents/defulatButton.dart';
import 'package:ecommerce_ui/Compenents/textfiled.dart';
import 'package:ecommerce_ui/Helper/Keypourd.dart';
import 'package:ecommerce_ui/Screens/ForgrtPassword.dart/ForgetPassword.dart';
import 'package:ecommerce_ui/Screens/HomeScreen/Home.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../size_config.dart';

class SigninForm extends StatefulWidget {
  const SigninForm({Key key}) : super(key: key);

  @override
  _SigninFormState createState() => _SigninFormState();
}

class _SigninFormState extends State<SigninForm> {
  @override
  String email;
  String password;
  bool remember = false;
  final _formkey = GlobalKey<FormState>();
  final List<String> errors = [];

  // void addError({String error}) {
  //   if (!errors.contains(error))
  //     setState(() {
  //       errors.add(error);
  //     });
  // }

  // void removeError({String error}) {
  //   if (errors.contains(error))
  //     setState(() {
  //       errors.remove(error);
  //     });
  // }

  Widget build(BuildContext context) {
    print(errors.length.toString());
    return Form(
      key: _formkey,
      child: Column(
        children: <Widget>[
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
            height: getProportionateScreenHeight(20),
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
            height: getProportionateScreenHeight(20),
          ),
          Row(
            children: [
              Checkbox(
                  activeColor: kPrimaryColor,
                  value: remember,
                  onChanged: (value) {
                    setState(() {
                      remember = value;
                    });
                  }),
              Text("Remember Me"),
              Spacer(),
              GestureDetector(
                onTap: () =>
                    Navigator.popAndPushNamed(context, ForgetPassword.routname),
                child: Text(
                  "ForgtPassword",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Formerrors(
            errors: errors,
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          DefultButtom(
            text: "Continue",
            press: () {
              if (_formkey.currentState.validate()) {
                _formkey.currentState.save();
                print(email.toString());
                print(password.toString());
                // if all are valid then go to success screen
                if (email != null && password != null) {
                  KeyboardUtil.hideKeyboard(context);
                  Navigator.pushNamed(context, HomeScreen.routeName);
                }
              }
            },
          )
        ],
      ),
    );
  }
}
