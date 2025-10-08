import 'package:flutter/material.dart';
import 'package:movie_explorer_app/constants/image_constants.dart';

import 'main.dart';

class MovieDetailPage extends StatefulWidget {
  const MovieDetailPage({super.key});

  @override
  State<MovieDetailPage> createState() => _MovieDetailPageState();
}

class _MovieDetailPageState extends State<MovieDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: AlignmentGeometry.xy(0,1),
              colors: [
                Color(0xff590001),
                Color(0xff02021B)
              ])
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: height*0.3,
                  width: width*1,
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage(ImageConstants.movie),fit: BoxFit.cover)),
                ),
                Positioned(
                  top: height*0.25,
                  left: width*0.3,
                  child: Container(
                    height: height*0.03,
                    width: width*0.4,
                    decoration: BoxDecoration(borderRadius: BorderRadiusGeometry.circular(width*0.3),
                      color: Colors.white.withOpacity(0.3),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.play_arrow,color: Colors.white,),
                        Text("Watch Trailer",style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: height*0.01),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    Container(
                        height: height*0.03,
                        width: width*0.2,
                        decoration: BoxDecoration(borderRadius: BorderRadiusGeometry.circular(width*0.3),
                          color: Colors.white.withOpacity(0.3),
                        ),
                      child:Center(child: Text("Action",style: TextStyle(
                        color: Colors.white
                      ),),)
                    ) ,
                    SizedBox(width: width*0.02,),
                    Container(
                        height: height*0.03,
                        width: width*0.2,
                        decoration: BoxDecoration(borderRadius: BorderRadiusGeometry.circular(width*0.3),
                          color: Colors.white.withOpacity(0.3),
                        ),
                      child:Center(child: Text("Sci Fi",style: TextStyle(
                        color: Colors.white
                      ),),)
                    )
                  ],),
                  SizedBox(height:height*0.03,),
                  Text("avengers: end game",style: TextStyle(color: Colors.white,
                  fontSize: width*0.05
                  ),),
                  SizedBox(height: height*0.04,),
                  Container(
                    height: height*0.03,
                    width: width*0.2,
                    decoration: BoxDecoration(borderRadius: BorderRadiusGeometry.circular(width*0.03),
                    border: Border.all(color: Colors.white)
                    ),
                    child: Center(child: Text("UA16+",style: TextStyle(color: Colors.white),)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
