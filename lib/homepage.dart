import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:sushi_shop/sushitile.dart';
import 'package:google_fonts/google_fonts.dart';
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
      resizeToAvoidBottomInset: false,
        backgroundColor: Color.fromARGB(255, 252, 251, 251),
        body:Column(
            children: [
              SizedBox(height: 290),
              Padding(
                padding: const EdgeInsets.only(left:38.0),
                child: Container(
                  width:350,
                  height:350,
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
                              color:Color.fromRGBO(255, 233, 233, 1),
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color:Color.fromARGB(255, 252, 189, 189),
                                width:2,
                              )
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
                            top:70,
                            left:12,
                            child: Column(children: [
                            Text("${sushiList[index][1]}",
                            style:GoogleFonts.hind(
                              textStyle: TextStyle(fontSize:15,fontWeight: FontWeight.w500)
                            )),
                            SizedBox(height:2,),
                            Text("${sushiList[index][2]}",style: TextStyle(fontSize:17,fontWeight: FontWeight.w600),)
                          ],)),
                          Positioned(
                            left:75,
                            top:94,
                            child:Row(children: [
                            Icon(Icons.star,color: Color.fromARGB(255, 254, 186, 78),),
                            Text("${sushiList[index][3]}",style: TextStyle(fontWeight: FontWeight.w500),)
                          ],))
                          ]
                        );
                      }),
                ),
              ),
            ],
          ),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Material(
              elevation:10,
              borderRadius: BorderRadius.circular(30),
              color:Color.fromRGBO(255, 233, 233, 1) ,
              child: GNav(
                color:Color.fromARGB(255, 250, 127, 127),
                backgroundColor:Color.fromRGBO(255, 233, 233, 1) ,
                tabs: [
                  GButton(icon: Icons.home_outlined,
                  text: "Home",
                  ),
                  GButton(icon: Icons.shopping_cart_outlined,
                  text:"Cart",
                  ),
                  GButton(icon: Icons.favorite_outline,
                  text:"Likes",
                  ),
                  GButton(icon: Icons.person_2_outlined,
                  text:"Profile"
                  )
                ],
              ),
            ),
          ),
      );
  }
}
