import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_explorer_app/screens/navigation_bar_page.dart';
import 'package:movie_explorer_app/screens/home_page.dart';

import '../../constants/image_constants.dart';
import '../../main.dart';

class OnBoarding2 extends StatefulWidget {
  const OnBoarding2({super.key});

  @override
  State<OnBoarding2> createState() => _OnBoarding2State();
}

class _OnBoarding2State extends State<OnBoarding2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(ImageConstants.splash2,height: height*1,width : width*1 , fit: BoxFit.cover,),
              Positioned(
                top: height*0.7,
                left: width*0.05,
                child: Text("Catch Every \nBlockbuster Without\n the Queue",
                  style: TextStyle(
                      color: Colors.white,
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => NavigationBarPage(),));
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
    );;
  }
}
