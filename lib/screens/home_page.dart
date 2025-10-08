import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:movie_explorer_app/constants/image_constants.dart';
import 'package:movie_explorer_app/main.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List datas =[];

  Future<void>fetchMovie() async {
    final response = await http.get(Uri.parse('http://www.omdbapi.com/?apikey=8ccc085e&t=mission&s=Impossible&i=tt0117060&y=2025&page=1'));

    if (response.statusCode == 200){
      setState(() {
        datas = jsonDecode(response.body);
      });
    }else{
      throw Exception('failed to load ${response.statusCode}');
    }
}


@override
  void initState() {
   fetchMovie();
    super.initState();
  }

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: height*0.6,
                  width: width*1,
                  child: Image.asset(ImageConstants.dr,fit: BoxFit.cover,),
                ),
                Positioned(
                  top: height*0.05,
                  left: width*0.05,
                  child: Container(
                    height: height*0.04,
                    width: width*0.9,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadiusGeometry.circular(width*0.3),
                        color: Colors.white.withOpacity(0.3)
                    ),
                    child:Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(width: width*0.03,),
                        Icon(Icons.search,color: Colors.white,),
                        SizedBox(width: width*0.03,),
                        Text("Search Movie",style: TextStyle(
                          color: Colors.white.withOpacity(0.4)
                        ),)
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: height*0.25,
                    left:width*0.4,
                    child: Icon(Icons.play_circle_fill_outlined,
                      color: Colors.white.withOpacity(0.3),
                    size: height*0.06,
                    )
                ),
                Positioned(
                  top: height*0.4,
                  left: width*0.25,
                  child: Row(
                    children: [
                      Container(
                        height: height*0.03,
                        width: width*0.2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusGeometry.circular(width*0.3),
                          color: Colors.white.withOpacity(0.3)
                        ),
                        child: Center(child: Text("Drama",style: TextStyle(color: Colors.white),)),
                      ),
                      SizedBox(width: width*0.02,),
                      Container(
                        height: height*0.03,
                        width: width*0.11,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusGeometry.circular(width*0.3),
                          color: Colors.white.withOpacity(0.3)
                        ),
                        child: Center(
                          child: Text("12+",style: TextStyle(
                            color: Colors.white
                          ),),
                        ),
                      ),
                      SizedBox(width: width*0.02,),
                      Container(
                        height: height*0.03,
                        width: width*0.2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusGeometry.circular(width*0.3),
                          color: Colors.white.withOpacity(0.3)
                        ),
                        child: Center(child: Text("Drama",style: TextStyle(color: Colors.white),)),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: height*0.02,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text("Trending Movie Near You",style: TextStyle(color: Colors.white),),
                  Container(
                    height: height*0.2,
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            childAspectRatio: 2 / 3)
                        ,
                        itemBuilder: (context, index) {
                          final data = datas[index];
                          return ClipRRect(
                            borderRadius: BorderRadiusGeometry.circular(width*0.03),
                            child: Stack(
                              children: [
                                Image.network(data[0]['poster'])
                              ],
                            ),
                          );
                        },
                    ),
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
