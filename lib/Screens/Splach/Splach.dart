import 'package:ecommerce_ui/Compenents/defulatButton.dart';
import 'package:ecommerce_ui/Screens/HomeScreen/Home.dart';
import 'package:ecommerce_ui/Screens/Signin/SignIn.dart';
import 'package:ecommerce_ui/constants.dart';
import 'package:ecommerce_ui/size_config.dart';
import 'package:flutter/material.dart';

class Splach extends StatefulWidget {
  static String routname = "/Splach";

  @override
  _SplachState createState() => _SplachState();
}

class _SplachState extends State<Splach> {
  int currentpage = 0;
  List<Map<String, String>> SplachData = [
    {
      "text": "welcome in tokotot lets shope",
      "image": "assets/images/splash_1.png"
    },
    {
      "text": "we help pepole to shope in the store",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "we show the easy way \n .just stay in home us ",
      "image": "assets/images/splash_3.png"
    }
  ];
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Expanded(
                  flex: 3,
                  child: PageView.builder(
                      onPageChanged: (value) {
                        setState(() {
                          currentpage = value;
                        });
                      },
                      itemCount: SplachData.length,
                      itemBuilder: (context, index) => SplachContent(
                            lable: SplachData[index]["text"],
                            image: SplachData[index]["image"],
                          ))),
              Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(20)),
                    child: Column(
                      children: <Widget>[
                        Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(SplachData.length,
                              (index) => buildDot(index: index)),
                        ),
                        Spacer(
                          flex: 3,
                        ),
                        DefultButtom(
                          text: "Continue",
                          press: () {
                             Navigator.pushNamed(context, SignInScreen.routname);
                           // Navigator.pushNamed(context, HomeScreen.routeName);
                          },
                        ),
                        Spacer()
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      width: currentpage == index ? 20 : 6,
      height: 6,
      decoration: BoxDecoration(
          color: kPrimaryColor, borderRadius: BorderRadius.circular(5)),
    );
  }
}

class SplachContent extends StatelessWidget {
  const SplachContent({Key key, this.lable, this.image}) : super(key: key);

  final String lable;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text(
          "TOKOTO",
          style: TextStyle(
              fontSize: getProportionateScreenWidth(36),
              color: kPrimaryColor,
              fontWeight: FontWeight.bold),
        ),
        Text(
          lable,
        ),
        Spacer(),
        Image.asset(
          image,
          height: getProportionateScreenHeight(200),
          width: getProportionateScreenWidth(200),
        )
      ],
    );
  }
}
