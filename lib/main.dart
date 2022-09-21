import 'package:flutter/material.dart';
import 'package:property_management/Register%20Screens/register_page.dart';
import 'package:property_management/Uti/routes.dart';
import 'package:property_management/Login%20Screens/Forgot.dart';
import 'package:property_management/Login%20Screens/Home.dart';
import 'package:property_management/Login%20Screens/login.dart';
import 'Register Screens/Submit_page.dart';
import 'Register Screens/Varificationcode.dart';
import 'Uti/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Property Management',
        theme: MyTheme.lightTheme(context),
        routes: {
          '/': (context) => const MyHomePage(),
          MyRoutes.loginRoute: (context) => LoginPage(),
          MyRoutes.forgotRoute: (context) => ForgotWidget(),
          MyRoutes.registerRoute: (context) => RegisterWidget(),
          MyRoutes.verficationRoute: (context) => VerfiWidget(),
          MyRoutes.submitRoute: (context) => submitWidget(),
        });
  }
}
