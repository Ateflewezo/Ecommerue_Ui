import 'package:ecommerce_ui/constants.dart';
import 'package:ecommerce_ui/enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../BottomNavBar.dart';

class Profile extends StatelessWidget {
  static String routname = "/Profile";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(color: kSecondaryColor, fontSize: 20),
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(
        selectedMenu: stateMenu.Profile,
      ),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Profile_pic(),
              SizedBox(
                height: 20,
              ),
              Profile_menu(
                text: "MyAccount",
                icon: "assets/icons/User Icon.svg",
                press: () {},
              ),
              Profile_menu(
                text: "Notification",
                icon: "assets/icons/Bell.svg",
                press: () {},
              ),
              Profile_menu(
                text: "Setting",
                icon: "assets/icons/Settings.svg",
                press: () {},
              ),
              Profile_menu(
                text: "Help us",
                icon: "assets/icons/Question mark.svg",
                press: () {},
              ),
              Profile_menu(
                text: "Logout",
                icon: "assets/icons/Log out.svg",
                press: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Profile_menu extends StatelessWidget {
  const Profile_menu({
    Key key,
    @required this.text,
    @required this.icon,
    @required this.press,
  }) : super(key: key);
  final String text;
  final String icon;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: FlatButton(
          padding: EdgeInsets.all(20),
          color: Color(0xfff5f6f9),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          onPressed: press,
          child: Row(
            children: [
              SvgPicture.asset(
                icon,
                width: 20,
                color: kPrimaryColor,
              ),
              SizedBox(width: 20),
              Expanded(
                  child: Text(
                text,
                style: TextStyle(color: kSecondaryColor, fontSize: 20),
              )),
              Icon(Icons.arrow_forward_ios)
            ],
          )),
    );
  }
}

class Profile_pic extends StatelessWidget {
  const Profile_pic({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 114,
      width: 114,
      child: Stack(
        fit: StackFit.expand,
        overflow: Overflow.visible,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/Profile Image.png"),
          ),
          Positioned(
            right: -15,
            bottom: 0,
            child: SizedBox(
              height: 45,
              width: 45,
              child: FlatButton(
                padding: EdgeInsets.zero,
                color: Color(0xfff5f6f9),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                onPressed: () {},
                child: SvgPicture.asset("assets/icons/Camera Icon.svg"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
