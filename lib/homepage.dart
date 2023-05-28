import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:sushi_shop/sushi_detail.dart';
import 'package:sushi_shop/sushitile.dart';
import 'package:google_fonts/google_fonts.dart';

import 'cart.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List sushiList = [
    ["sushi1.png", "Sake", "\$ 2.6", "4.8"],
    ["sushi2.png", "Sushi2", "\$ 3.1", "4.0"],
    ["sushi3.png", "Sushi3", "\$ 2.8", "4.1"],
    ["sushi4.png", "Sushi4", "\$ 3.0", "4.2"]
  ];
  List categories = ["All", "Maki", "Nigiri", "Gunkan", "Temaki"];
  int tabIndex = 0;
  @override
  Widget build(BuildContext context) {
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
            padding: const EdgeInsets.only(left: 30),
            child: Container(
              height: 40,
              width: 400,
              child: ListView.builder(
                itemCount: categories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        tabIndex = index;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Container(
                        height: 40,
                        width: 90,
                        decoration: BoxDecoration(
                            color: tabIndex == index
                                ? Color.fromARGB(255, 252, 189, 189)
                                : Color.fromRGBO(255, 233, 233, 1),
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(
                                color: Color.fromARGB(255, 252, 189, 189),
                                width: 2)),
                        child: Center(
                            child: Text(
                          "${categories[index]}",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        )),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 38.0),
            child: Container(
              width: 350,
              height: 360,
              child: GridView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.vertical,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SushiDetail(
                                    sushiName: sushiList[index][1],
                                    sushiImage: sushiList[index][0],
                                    sushiPrice: sushiList[index][2],
                                    sushiRating: sushiList[index][3])));
                      },
                      child: Stack(
                          fit: StackFit.loose,
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              height: 130,
                              width: 130,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(255, 233, 233, 1),
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                    color: Color.fromARGB(255, 252, 189, 189),
                                    width: 2,
                                  )),
                            ),
                            Positioned(
                              top: -48,
                              left: 7,
                              child: Container(
                                height: 115,
                                width: 115,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "lib/images/${sushiList[index][0]}"))),
                              ),
                            ),
                            Positioned(
                                top: 70,
                                left: 12,
                                child: Column(
                                  children: [
                                    Text("${sushiList[index][1]}",
                                        style: GoogleFonts.hind(
                                            textStyle: TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.w500))),
                                    SizedBox(
                                      height: 1,
                                    ),
                                    Text(
                                      "${sushiList[index][2]}",
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                )),
                            Positioned(
                                left: 75,
                                top: 94,
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Color.fromARGB(255, 254, 186, 78),
                                    ),
                                    Text(
                                      "${sushiList[index][3]}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                ))
                          ]),
                    );
                  }),
            ),
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
