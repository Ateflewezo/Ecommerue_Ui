
import 'package:ecommerce_ui/Screens/CartProduct/CartProduct.dart';
import 'package:ecommerce_ui/Screens/CompleteProfile/CompleteProfile.dart';
import 'package:ecommerce_ui/Screens/CompleteProfile/Otp.dart';
import 'package:ecommerce_ui/Screens/ForgrtPassword.dart/ForgetPassword.dart';
import 'package:ecommerce_ui/Screens/HomeDetiales/Detiales.dart';
import 'package:ecommerce_ui/Screens/HomeScreen/Home.dart';
import 'package:ecommerce_ui/Screens/LoginSucces/loginSuccess.dart';
import 'package:ecommerce_ui/Screens/Porfile/Profile.dart';
import 'package:ecommerce_ui/Screens/SignUp/SignUpScreen.dart';
import 'package:ecommerce_ui/Screens/Signin/SignIn.dart';
import 'package:ecommerce_ui/Screens/Splach/Splach.dart';
import 'package:flutter/material.dart';
final Map<String, WidgetBuilder> routs = {
Splach.routname:(context) =>Splach(),
SignInScreen.routname:(context) =>SignInScreen(),
LoginSuccessScreen.routeName:(context)=>LoginSuccessScreen(),
SignUpScreen.routname:(context) =>SignUpScreen(),
ForgetPassword.routname:(context) =>ForgetPassword(),
CompleteProfile.routname:(context)=>CompleteProfile(),
OtpScreen.routename:(context)=>OtpScreen(),
HomeScreen.routeName:(context)=>HomeScreen(),
DetialesScrren.routname:(context)=>DetialesScrren(),
CartProduct.routname:(context)=>CartProduct(),
Profile.routname:(context) =>Profile(),



};
