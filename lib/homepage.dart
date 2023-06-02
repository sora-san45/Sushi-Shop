import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:sushi_shop/detail_page.dart';
import 'package:sushi_shop/sushigrid.dart';
import 'package:sushi_shop/sushitile.dart';
import 'package:google_fonts/google_fonts.dart';

import 'cart.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  int tabIndex = 0;
  List sushiList = [
    ["lib/maki/maki1.png", "Maki1", "\$4.2", "4.9"],
    ["lib/temaki/temaki1.png", "Temaki1", "\$4.2", "4.9"],
    ["lib/temaki/temaki2.png", "Temaki2", "\$4.3", "4.7"],
    ["lib/gunkan/gunkan1.png", "Gunkan1", "\$4.2", "4.9"],
    ["lib/temaki/temaki3.png", "Temaki3", "\$4.2", "4.9"],
    ["lib/maki/maki2.png", "Maki2", "\$4.3", "4.7"],
    ["lib/maki/maki3.png", "Maki3", "\$4.2", "4.9"],
    ["lib/maki/maki4.png", "Maki4", "\$4.3", "4.7"],
    ["lib/maki/maki5.png", "Maki5", "\$4.2", "4.9"],
    ["lib/maki/maki6.png", "Maki6", "\$4.3", "4.7"],
    ["lib/nigiri/nigiri1.png", "Nigiri1", "\$4.2", "4.9"],
    ["lib/nigiri/nigiri2.png", "Nigiri2", "\$4.3", "4.7"],
    
    ["lib/temaki/temaki4.png", "Temaki4", "\$4.3", "4.7"],
    
    ["lib/gunkan/gunkan2.png", "Gunkan2", "\$4.3", "4.7"]
  ];

  List maki = [
    ["lib/maki/maki1.png", "Maki1", "\$4.2", "4.9"],
    ["lib/maki/maki2.png", "Maki2", "\$4.3", "4.7"],
    ["lib/maki/maki3.png", "Maki3", "\$4.2", "4.9"],
    ["lib/maki/maki4.png", "Maki4", "\$4.3", "4.7"],
    ["lib/maki/maki5.png", "Maki5", "\$4.2", "4.9"],
    ["lib/maki/maki6.png", "Maki6", "\$4.3", "4.7"],
  ];
  List nigiri = [
    ["lib/nigiri/nigiri1.png", "Nigiri1", "\$4.2", "4.9"],
    ["lib/nigiri/nigiri2.png", "Nigiri2", "\$4.3", "4.7"]
  ];
  List gunkan = [
    ["lib/gunkan/gunkan1.png", "Gunkan1", "\$4.2", "4.9"],
    ["lib/gunkan/gunkan2.png", "Gunkan2", "\$4.3", "4.7"]
  ];
  List temaki = [
    ["lib/temaki/temaki1.png", "Temaki1", "\$4.2", "4.9"],
    ["lib/temaki/temaki2.png", "Temaki2", "\$4.3", "4.7"],
    ["lib/temaki/temaki3.png", "Temaki3", "\$4.2", "4.9"],
    ["lib/temaki/temaki4.png", "Temaki4", "\$4.3", "4.7"],
  ];
  List categories = ["All", "Maki", "Nigiri", "Gunkan", "Temaki"];

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 5, vsync: this);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30)),
            child: Stack(
              children: [
                Container(
                  height: 170,
                  width: double.maxFinite,
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 253, 187, 165)),
                ),
                Positioned(
                  left: 30,
                  top: 46,
                  child: Text(
                    "Miso",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w500,
                    )),
                  ),
                ),
                Positioned(
                  left: 30,
                  top: 87,
                  child: Text(
                    "Sushi Bar.",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      fontSize: 25,
                    )),
                  ),
                ),
                Positioned(
                    top: -10,
                    left: 170,
                    child: Container(
                      height: 200,
                      width: 250,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("lib/images/main.jpg"))),
                    ))
              ],
            ),
          ),
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.only(left: 2),
            child: Container(
                height: 40,
                width: 340,
                decoration: BoxDecoration(
                  color:Color.fromRGBO(255, 233, 233, 1),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width:2,color: Color.fromARGB(255, 255, 152, 152))
                ),
                child: TabBar(
                  unselectedLabelColor: Colors.black,
                  controller: _tabController,
                  isScrollable: true,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 255, 152, 152),
                  ),
                  tabs: [
                    Text("All"),
                    Text("Maki"),
                    Text("Nigiri"),
                    Text("Gunkan"),
                    Text("Temaki")
                  ],
                )),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(left: 38.0),
            child: Container(
                width: 350,
                height: 360,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    SushiGrid(
                      sushiList: sushiList,
                    ),
                    SushiGrid(
                      sushiList: maki,
                    ),
                    SushiGrid(
                      sushiList: nigiri,
                    ),
                    SushiGrid(
                      sushiList: gunkan,
                    ),
                    SushiGrid(
                      sushiList: temaki,
                    )
                  ],
                )),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(35),
          child: Material(
            elevation: 5,
            child: GNav(
              tabBackgroundColor: Color.fromARGB(255, 255, 178, 165),
              color: Color.fromARGB(255, 123, 90, 90),
              backgroundColor: Color.fromARGB(255, 248, 200, 193),
              tabs: [
                GButton(
                  icon: Icons.home_outlined,
                  text: "Home",
                ),
                GButton(
                  icon: Icons.shopping_cart_outlined,
                  text: "Cart",
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Cart()));
                  },
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
