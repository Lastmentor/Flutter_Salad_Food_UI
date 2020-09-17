import 'package:flutter/material.dart';

import 'detailpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(Icons.sort, color: Colors.black, size: 30),
                Icon(Icons.search, color: Colors.black, size: 30)
              ],
            ),
            SizedBox(height: 25),
            Text("Delicious Salads", style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold, letterSpacing: 1)),
            SizedBox(height: 5),
            Text("We made fresh and Healthy food", style: TextStyle(color: Colors.black.withOpacity(0.7), fontSize: 15)),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.black
                  ),
                  child: Center(
                    child: Text("Salads", style: TextStyle(color: Colors.white)),
                  ),
                ),
                Container(
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color(0xFFf5f5f5)
                  ),
                  child: Center(
                    child: Text("Soups", style: TextStyle(color: Color(0xFF3d3739))),
                  ),
                ),
                Container(
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color(0xFFf5f5f5)
                  ),
                  child: Center(
                    child: Text("Grilled", style: TextStyle(color: Color(0xFF3d3739))),
                  ),
                ),
                Icon(Icons.import_export, size: 35, color: Colors.black)
              ],
            ),
            SizedBox(height: 25),
            Container(
              height: 140,
              child: Stack(
                alignment: Alignment.centerLeft,
                children: <Widget>[
                  Container(
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color(0xFFf4f4f4),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 150),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Chicken Salad", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold, letterSpacing: 1)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("Chicken with Avocado", style: TextStyle(color: Colors.black.withOpacity(0.7), fontSize: 14.5)),
                              SizedBox(width: 1),
                              Container(
                                width: 25,
                                height: 25,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.5),
                                  color: Colors.black
                                ),
                                child: Center(
                                  child: Icon(Icons.add, color: Colors.white, size: 19),
                                ),
                              ),
                              SizedBox(width: 1)
                            ],
                          ),
                          Text("\$32.00", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold, letterSpacing: 1)),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SecondPage(heroTag: "images/image.png",)
                      ));
                    },
                    child: Hero(
                      tag: "images/image.png",
                      child: Container(
                        height: 140,
                        width: 140,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("images/image.png"),
                            fit: BoxFit.cover
                          )
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  height: 210,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Container(
                          height: 180,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60),
                            color: Color(0xFFf4f4f4),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 70),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("Mixed Salad", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold, letterSpacing: 1)),
                                SizedBox(height: 5),
                                Text("Mix Vegetables", style: TextStyle(color: Colors.black.withOpacity(0.7), fontSize: 13)),
                                SizedBox(height: 5),
                                Text("\$24.00", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold, letterSpacing: 1)),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        child: Container(
                          height: 105,
                          width: 105,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("images/image.png"),
                                  fit: BoxFit.cover
                              )
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        child: Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.5),
                              color: Colors.black
                          ),
                          child: Center(
                            child: Icon(Icons.add, color: Colors.white, size: 19),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 210,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Container(
                          height: 180,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60),
                            color: Color(0xFFf4f4f4),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 70),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("Quinoa Salad", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold, letterSpacing: 1)),
                                SizedBox(height: 5),
                                Text("Spicy with garlic", style: TextStyle(color: Colors.black.withOpacity(0.7), fontSize: 13)),
                                SizedBox(height: 5),
                                Text("\$24.00", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold, letterSpacing: 1)),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        child: Container(
                          height: 105,
                          width: 105,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("images/image.png"),
                                  fit: BoxFit.cover
                              )
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        child: Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.5),
                              color: Colors.black
                          ),
                          child: Center(
                            child: Icon(Icons.add, color: Colors.white, size: 19),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Container(
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.black,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(Icons.home, color: Colors.white, size: 30),
                    Icon(Icons.account_balance_wallet, color: Colors.white, size: 30),
                    Icon(Icons.message, color: Colors.white, size: 30),
                    Icon(Icons.perm_identity, color: Colors.white, size: 30)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
