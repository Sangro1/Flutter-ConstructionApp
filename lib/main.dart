import 'package:flutter/material.dart';
import 'package:property_management/registerpage.dart';
import 'package:property_management/Uti/routes.dart';
import 'package:property_management/widgets/Forgot.dart';
import 'package:property_management/widgets/Home.dart';
import 'package:property_management/widgets/login.dart';
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
      // home: const BackgroundImage(),
      routes: {
        '/': (context) => const MyHomePage(title: 'Peroperty',),
        MyRoutes.loginRoute: (context) => const loginPage(),
        MyRoutes.forgotRoute: (context) => const ForgotWidget(),
        MyRoutes.registerRoute: (context) => const RegisterWidget(),
      },
    );
  }
}
