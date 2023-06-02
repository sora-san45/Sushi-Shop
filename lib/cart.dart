import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:sushi_shop/homepage.dart';
import 'package:sushi_shop/sushi_detail.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  int index = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 60),
          Padding(
            padding: const EdgeInsets.only(
              right: 180,
            ),
            child: Text("Your cart",
                style: GoogleFonts.poppins(
                    textStyle:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w600))),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 35,
            ),
            child: Container(
              height: 400,
              width: 320,
              child: ListView(
                children: [
                  InkWell(
                    onTap: () {
                      
                    },
                    child: Stack(children: [
                      Container(
                        height: 100,
                        width: 320,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 3,
                                color: Color.fromARGB(172, 252, 151, 151)),
                            borderRadius: BorderRadius.circular(25),
                            color: Color.fromARGB(255, 255, 224, 224)),
                      ),
                      Positioned(
                        top: -5,
                        left: 7,
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("lib/maki/maki2.png"))),
                        ),
                      ),
                      Positioned(
                          left: 115,
                          top: 20,
                          child: Text("sushi2",
                              style: TextStyle(
                                fontSize: 20,
                              ))),
                      Positioned(
                          left: 115,
                          top: 50,
                          child: Text("\$3.2",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                              ))),
                      Positioned(
                        left:200,
                        top:25,
                        child: Row(children: [
                          IconButton(onPressed: (){}, icon: Icon(Icons.add)),
                          Container(
                            width: 27,
                            height: 27,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              border: Border.all(
                                width:2,
                                color: Color.fromARGB(255, 246, 174, 174)),
                              color: Color.fromARGB(255, 253, 214, 214),
                            ),
                            child: Center(child: Text("0")),
                          ),
                          IconButton(onPressed: (){}, icon: Icon(Icons.remove)),
                        ],),
                      )
                    ]),
                  )
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(35),
          child: Material(
            elevation: 5,
            child: GNav(
              selectedIndex: 1,
              tabBackgroundColor: Color.fromARGB(255, 255, 178, 165),
              color: Color.fromARGB(255, 123, 90, 90),
              backgroundColor: Color.fromARGB(255, 248, 200, 193),
              tabs: [
                GButton(
                  icon: Icons.home_outlined,
                  text: "Home",
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                ),
                GButton(
                  icon: Icons.shopping_cart_outlined,
                  text: "Cart",
                ),
                GButton(
                  icon: Icons.favorite_outline,
                  text: "Likes",
                ),
                GButton(icon: Icons.person_2_outlined, text: "Profile")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
