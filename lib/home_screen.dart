import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  List iconImages = [
    "assets/icon1.png",
    "assets/icon2.png",
    "assets/icon3.png",
    "assets/icon4.png",
    "assets/icon1.png",
    "assets/icon2.png",
    "assets/icon3.png",
    "assets/icon4.png",
  ];

  List Titles = [
    "Veggie Taco Hash",
    "Mix Veg Salad",
    "Chickpea Salad",
    "Chilli Salad",
  ];

  List TitleImages = [
    "veggie _taco_hash",
    "mix_veg_salad",
    "chickpea_salad",
    "chilli_salad",
  ];

  final ItemTitle = TextStyle(
      fontWeight: FontWeight.bold, color: Colors.black87, fontSize: 17);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 40, left: 10, right: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.sort,
                    size: 40,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      Icons.shopping_bag_outlined,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                "Comida deliciosa",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Descubra comidas incríveis",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 20),
              Container(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 70,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: iconImages.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                        height: 70,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              spreadRadius: 2,
                              color: Colors.black12,
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Image.asset(iconImages[index]),
                        ),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 250,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: TitleImages.length,
                    itemBuilder: (context, index) {
                      return Stack(
                        children: [
                          Padding(padding: EdgeInsets.only(top: 30),
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            height: 250,
                            width: 190,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4,
                                  spreadRadius: 2,
                                  color: Colors.black12,
                                ),

                              ],
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(Titles[index], style: ItemTitle,),
                                  SizedBox(height: 7),
                                  Text(
                                    "Salada Vegetariana Fresca e Saudável",
                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 15,
                                    ),
                                  ),
                                  SizedBox(height: 7),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("\$25.00"),
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                          color: Colors.black12,
                                          borderRadius: BorderRadius.circular(30),
                                        ),
                                        child: Icon(
                                          Icons.favorite_border,
                                          size: 20,
                                          color: Colors.black54,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          ),
                          Positioned(
                            left: 35,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(80),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 2,
                                    spreadRadius: 4,
                                    color: Colors.black12,
                                  ),
                                ],
                              ),
                              child: Image.asset("assets/${TitleImages[index]}.png"),
                              height: 140,
                              width: 140,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
