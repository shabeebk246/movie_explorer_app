import 'package:flutter/material.dart';
import 'package:movie_explorer_app/constants/image_constants.dart';
import 'package:movie_explorer_app/main.dart';
import 'package:movie_explorer_app/screens/splash/on_boarding_2.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Column(
         children: [
           Stack(
             children: [
               Image.asset(ImageConstants.splash1,height: height*1,width : width*1 , fit: BoxFit.cover,),
               Positioned(
                 top: height*0.7,
                 left: width*0.05,
                 child: Text("Catch Every \nBlockbuster Without\n the Queue",
                 style: TextStyle(
                   color: Colors.black,
                   fontSize: height*0.03,
                   fontWeight: FontWeight.bold
                 ),
                 ),
               ),
               Positioned(
                 top: height*0.9,
                 left: width*0.05,
                 child: InkWell(
                   onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context) => OnBoarding2(),));
                   },
                   child: Container(
                     height: height*0.06,
                     width: width*0.9,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadiusGeometry.circular(width*0.3),
                       color: Colors.white
                     ),
                     child: Center(
                       child: Text("Next",style: TextStyle(fontWeight: FontWeight.bold),),
                     ),
                   ),
                 ),
               ),
             ],
           )
         ],
       ),
    );
  }
}
