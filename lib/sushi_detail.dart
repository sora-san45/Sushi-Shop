import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_shop/homepage.dart';

class SushiDetail extends StatefulWidget {
  final String sushiName;
  final String sushiImage;
  final String sushiPrice;
  final String sushiRating;
  SushiDetail(
      {super.key,
      required this.sushiName,
      required this.sushiImage,
      required this.sushiPrice,
      required this.sushiRating});

  @override
  State<SushiDetail> createState() => _SushiDetailState();
}

class _SushiDetailState extends State<SushiDetail> {
  bool like = false;
  var count = 0;
  @override
  Widget build(BuildContext context) {
    
    void addItem() {
      setState(() {
        count += 1;
      });
    }

    void removeItem() {
      setState(() {
        if (count != 0) {
          count -= 1;
        }
      });
    }

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Column(children: [
        Stack(children: [
          Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 240,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 245, 176, 172),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.elliptical(150, 100),
                    bottomRight: Radius.elliptical(150, 100))),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    iconSize: 30,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    icon: Icon(Icons.arrow_back_ios)),
                IconButton(
                    iconSize: 30,
                    onPressed: () {
                      setState(() {
                        like = !like;
                      });
                    },
                    icon: like == true
                        ? Icon(Icons.favorite)
                        : Icon(Icons.favorite_outline))
              ],
            ),
          ),
          Positioned(
            left: 80,
            top: 90,
            child: Container(
              height: 230,
              width: 230,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("lib/images/${widget.sushiImage}"))),
            ),
          ),
        ]),
        SizedBox(
          height: 30,
        ),
        Text(
          "${widget.sushiName}",
          style: GoogleFonts.hind(
              textStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          )),
        ),
        SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.only(right: 290),
          child: Text("${widget.sushiPrice}",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(right: 240),
          child: Text("Description",
              style: GoogleFonts.poppins(
                  textStyle:
                      TextStyle(fontSize: 17, fontWeight: FontWeight.w500))),
        ),
        SizedBox(height: 10),
        Container(
          width: 340,
          child: Text(
              "Experience the artistry of our sushi rolls. \nFresh, premium ingredients expertly crafted into bite-sized perfection.",
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                fontSize: 15,
              ))),
        ),
        SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children: [
              Icon(
                Icons.star,
                color: Colors.yellow,
              ),
              Text(
                "${widget.sushiRating}",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        SizedBox(height: 40),
        Stack(
          children: [
            Container(
              height: 60,
              width: 200,
              decoration: BoxDecoration(
                border: Border.all(
                  width:3,
                  color: Color.fromARGB(255, 252, 189, 189),),
                color: Color.fromRGBO(255, 233, 233, 1),
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            Positioned(left: 20, top: 20, child: 
            InkWell(
              onTap: (){
              },
              child: Text(
                "Add to cart",
                style:TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500
                )
                ),
            )),
            Positioned(
                top: 5,
                left: 90,
                child: IconButton(
                    onPressed: () {
                      addItem();
                    },
                    icon: Icon(Icons.add))),
            Positioned(
              left: 129,
              top: 15,
              child: Container(
                width: 27,
                height: 27,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  border: Border.all(
                    width:2,
                    color: Color.fromARGB(255, 246, 174, 174)),
                  color: Color.fromARGB(255, 253, 214, 214),
                ),
                child: Center(child: Text("${count}")),
              ),
            ),
            Positioned(
                top: 5,
                left: 150,
                child: IconButton(
                    onPressed: () {
                      removeItem();
                    },
                    icon: Icon(Icons.remove)))
          ],
        )
      ]),
    );
  }
}
