import 'package:flutter/material.dart';
import 'package:moody/pages/Moody/mainPage1_Moody.dart';
import 'package:moody/pages/News/mainPage3_News.dart';
import 'package:moody/pages/WorkOut/mainPage2_workOut.dart';

import 'core/Application_Theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ApplicationTheme.lightTheme,
      initialRoute: MoodyPage.routeName,
routes: {
  MoodyPage.routeName :(context) =>MoodyPage(),
  NewsPage.routeName :(context) =>NewsPage(),
  WorkOutPage.routeName :(context) =>WorkOutPage(),
},
    );
  }
}

