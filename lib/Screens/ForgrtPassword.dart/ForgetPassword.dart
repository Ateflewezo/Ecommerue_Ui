import 'package:ecommerce_ui/Compenents/FormsERROR.dart';
import 'package:ecommerce_ui/Compenents/NoAccount.dart';
import 'package:ecommerce_ui/Compenents/defulatButton.dart';
import 'package:ecommerce_ui/Compenents/textfiled.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../size_config.dart';

class ForgetPassword extends StatefulWidget {
  static String routname = "/Forget_password";

  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Forget Password",
          style: TextStyle(
              color: kSecondaryColor,
              fontSize: getProportionateScreenHeight(20)),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: SizeConfig.screenHeight * 0.04,
              ),
              Text(
                "Forget Password",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenHeight(25),
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Please Enter your email  \n to return your password",
                textAlign: TextAlign.center,
              ),
              ForgetPasswordForm()
            ],
          ),
        ),
      ),
    );
  }
}

class ForgetPasswordForm extends StatefulWidget {
  const ForgetPasswordForm({Key key}) : super(key: key);

  @override
  _ForgetPasswordFormState createState() => _ForgetPasswordFormState();
}

class _ForgetPasswordFormState extends State<ForgetPasswordForm> {
  @override
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String email;
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenHeight(20)),
        child: Column(
          children: [
            SizedBox(
              height: SizeConfig.screenHeight * 0.08,
            ),
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
                 
                } else if (!emailValidatorRegExp.hasMatch(value) &&
                    !errors.contains(kInvalidEmailError)) {
                  setState(() {
                    errors.add(kInvalidEmailError);
                  });
                 
                }
                return null;
              },
            ),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            Formerrors(errors: errors),
            SizedBox(
              height: SizeConfig.screenHeight * 0.04,
            ),
            DefultButtom(
              text: "Conteuine",
              press: () {
                if (_formKey.currentState.validate()) {}
              },
            ),
            SizedBox(
              height: SizeConfig.screenHeight * 0.08,
            ),
            NoAccount(),
          ],
        ),
      ),
    );
  }
}
