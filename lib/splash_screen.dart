import 'package:flutter/material.dart';
import 'package:movie_explorer_app/screens/splash/on_boarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  Future<void> nextPage()async{
    Future.delayed(Duration(
      seconds: 2
    )).then((value) => Navigator.push(context, MaterialPageRoute(builder: (context) => OnBoarding(),)),);
  }

  @override
  void initState() {
    nextPage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "SPLASH",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 32,
                ),
              ),
            ],
          ),
        )
    );
  }
}
