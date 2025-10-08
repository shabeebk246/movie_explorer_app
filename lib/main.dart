import 'package:flutter/material.dart';
import 'package:movie_explorer_app/movie_detail_page.dart';
import 'package:movie_explorer_app/screens/splash/on_boarding.dart';
import 'package:movie_explorer_app/splash_screen.dart';

var height;
var width;


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    width=MediaQuery.of(context).size.width;
    height=MediaQuery.of(context).size.height;
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

