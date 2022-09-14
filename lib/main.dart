import 'package:flutter/material.dart';
import 'package:property_management/routes.dart';

import 'Home.dart';
import 'Uti/Pages/Forgot.dart';
import 'Uti/Pages/login.dart';
import 'Uti/Pages/register_page.dart';
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
        '/':(context) => MyHomePage(title: 'Property Management application'),

        MyRoutes.registerRoute: (context) => const RegisterPage(),
                  MyRoutes.loginRoute: (context) => loginPage(),
                  MyRoutes.forgotRoute: (context) => ForgotPage(title: 'Property Management application',),

      },

    );

  }
}


