import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_shop/sushi_detail.dart';

class SushiGrid extends StatelessWidget {
  final sushiList;
  const SushiGrid({super.key, required List this.sushiList});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
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
                  });
  }
}