import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:sushi_shop/homepage.dart';

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
          SizedBox(height: 100),
          Padding(
            padding: const EdgeInsets.only(left:35,),
            child: Container(
              height:400,
              width:320,
              child: ListView(
                children: [
                  Stack(
                    children: [Container(
                      height:100,
                      width:320,
                      decoration: BoxDecoration(
                        border: Border.all(width:3,color: Color.fromARGB(255, 252, 151, 151)),
                        borderRadius: BorderRadius.circular(25),
                        color: Color.fromARGB(255, 255, 212, 212)
                      ),
                    ),
                    Positioned(
                      child: Container(
                        height:50,
                        width:50,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("lib/images/sushi3.png"))
                        ),
                      ),
                    )
                    ]
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
