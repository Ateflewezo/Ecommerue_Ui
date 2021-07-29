import 'package:ecommerce_ui/Screens/SignUp/SignUpScreen.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class NoAccount extends StatelessWidget {
  const NoAccount({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("DontHave an ACCOUNT ?",
            style: TextStyle(fontSize: getProportionateScreenWidth(16))),
        GestureDetector(
          onTap: () =>
              Navigator.popAndPushNamed(context, SignUpScreen.routname),
          child: Text(
            "SignUp",
            style: TextStyle(
                color: kPrimaryColor,
                fontSize: getProportionateScreenWidth(16)),
          ),
        )
      ],
    );
  }
}
