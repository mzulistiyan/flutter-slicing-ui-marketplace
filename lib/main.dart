import 'package:flutter/material.dart';
import 'package:flutter_slicing_ui_ordo/pages/chekout_page.dart';
import 'package:flutter_slicing_ui_ordo/pages/detail_page.dart';
import 'package:flutter_slicing_ui_ordo/pages/home_page.dart';
import 'package:flutter_slicing_ui_ordo/pages/splash_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/home-page': (context) => HomePage(),
        '/detail-page': (context) => DetailPage(),
        '/checkout-page': (context) => Chekout(),
      },
    );
  }
}
