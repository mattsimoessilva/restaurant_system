import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  
  List iconImages = [
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
    "veggie_taco_hash",
    "mix_veg_salad",
    "chickpea_salad",
    "chilli_salad",
  ];

  final ItemTitle = TextStyle(
    fontWeight: FontWeight.bold, color: Colors.black87, fontSize: 17
  );

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
            ],
          ),
        ),
      ),
    );
  }
}