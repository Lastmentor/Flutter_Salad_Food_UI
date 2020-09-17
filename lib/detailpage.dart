import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {

  final heroTag;

  SecondPage({this.heroTag});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                    icon: Icon(Icons.arrow_back_ios, color: Colors.black, size: 30),
                    onPressed: (){
                      Navigator.of(context).pop();
                    },
                ),
                Icon(Icons.more_vert, color: Colors.black, size: 30)
              ],
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Hero(
                  tag: heroTag,
                  child: Container(
                    height: 250,
                    width: 250,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(heroTag),
                        fit: BoxFit.cover
                      )
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text("Mediterranean", style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold, letterSpacing: 1)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                children: <Widget>[
                  Text("Quinoa Salad", style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold, letterSpacing: 1)),
                  Spacer(),
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Colors.black
                    ),
                    child: Center(
                      child: Icon(Icons.add, color: Colors.white, size: 15),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text("1", style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold)),
                  SizedBox(width: 10),
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Colors.black
                    ),
                    child: Center(
                      child: Icon(Icons.remove, color: Colors.white, size: 15),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Text(
                "Fresh and healthy salad mafe with our own Chef Recipe Special healthy and-fat free dish for those who want to lose weight.",
                style: TextStyle(fontSize: 17),
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: <Widget>[
                  Text("Delivery Time", style: TextStyle(fontSize: 17)),
                  SizedBox(width: 15),
                  Icon(Icons.access_time, size: 20),
                  SizedBox(width: 15),
                  Text("25 Mins", style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Total Price", style: TextStyle(fontSize: 17)),
                      SizedBox(height: 5),
                      Text("\$24,00", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Spacer(),
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.black,
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        Icon(Icons.shopping_cart, color: Colors.white, size: 30),
                        Positioned(
                          right: 20,
                          top: 20,
                          child: Container(
                            height: 18,
                            width: 18,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: Colors.red,
                            ),
                            child: Center(
                              child: Text("1", style: TextStyle(color: Colors.white),),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
