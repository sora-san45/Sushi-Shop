import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sushi_shop/sushitile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List sushiList = [
    ["sushi1.png","Sushi1","\$ 2.6","4.8"],
    ["sushi2.png","Sushi2","\$ 3.1","4.0"],
    ["sushi3.png","Sushi3","\$ 2.8","4.1"],
    ["sushi4.png","Sushi4","\$ 3.0","4.2"]
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body:Column(
            children: [
              SizedBox(height: 300),
              Padding(
                padding: const EdgeInsets.only(left:38.0),
                child: Container(
                  width:350,
                  height:400,
                  child: GridView.builder(
                      itemCount: 4,
                      scrollDirection: Axis.vertical,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 15,
                        crossAxisSpacing: 10,
                      ),
                      itemBuilder: (context, index) {
                        return Stack(
                          fit:StackFit.loose,
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                            height:130,
                            width:130,
                            decoration: BoxDecoration(
                              color:Color.fromARGB(255, 239, 232, 232),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          Positioned(
                              top:-50,
                            left:7,
                            child: Container(
                              height:115,
                              width:115,
                              decoration: BoxDecoration(
                                image:DecorationImage(image:AssetImage("lib/images/${sushiList[index][0]}"))
                              ),
                            ),
                          ),
                          Positioned(
                            top:72,
                            left:12,
                            child: Column(children: [
                            Text("${sushiList[index][1]}",style: TextStyle(fontSize: 14.5),),
                            SizedBox(height:6,),
                            Text("${sushiList[index][2]}",style: TextStyle(fontSize:17,fontWeight: FontWeight.w500),)
                          ],)),
                          Positioned(
                            left:75,
                            top:92,
                            child:Row(children: [
                            Icon(Icons.star,color: Colors.yellow,),
                            Text("${sushiList[index][3]}")
                          ],))
                          ]
                        );
                      }),
                ),
              ),
            ],
          ),
      );
  }
}
