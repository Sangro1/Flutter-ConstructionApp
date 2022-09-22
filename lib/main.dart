
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:property_management/widgets/Login%20Screens/Forgot.dart';
import 'package:property_management/widgets/Login%20Screens/Home.dart';
import 'package:property_management/widgets/Login%20Screens/login.dart';
import 'package:property_management/widgets/Register%20Screens/Submit_page.dart';
import 'package:property_management/widgets/Register%20Screens/Varificationcode.dart';
import 'package:property_management/widgets/Register%20Screens/register_page.dart';

import 'Uti/colors.dart';
import 'Uti/routes.dart';

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
