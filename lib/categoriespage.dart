import 'package:ecommerceapp/accesories_store.dart';
import 'package:ecommerceapp/perfumespage.dart';
import 'package:ecommerceapp/sneakerstore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'mobilestore.dart';

class Categories extends StatefulWidget {
  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.black,
        ),
        title: Text(
          "All Categories",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: GridView.extent(
          maxCrossAxisExtent: 250,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: [
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SneakerStore()));
              },
              child: Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Container(
                          width: 200,
                          height: 150,
                          child: Image.asset(
                            "asset/image/shoe.jpg",
                          )),
                      Text(
                        "Shoes",
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MobileStore()));
              },
              child: Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Container(
                          width: 200,
                          height: 150,
                          child: Image.asset(
                            "asset/image/mobile.jpeg",
                          )),
                      Text("Mobile")
                    ],
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AccesoriesStore()));
              },
              child: Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Container(
                          width: 200,
                          height: 150,
                          child: Image.asset(
                            "asset/image/headphone.jpg",
                          )),
                      Text("Accesories")
                    ],
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>PerfumeStore()));
              },
              child: Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Container(
                          width: 200,
                          height: 150,
                          child: Image.asset(
                            "asset/image/Perfume.jpg",
                          )),
                      Text("Perfume")
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
