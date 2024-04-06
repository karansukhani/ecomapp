import 'package:ecommerceapp/Screens/accesories_store.dart';
import 'package:ecommerceapp/Screens/perfumestore.dart';
import 'package:ecommerceapp/Screens/sneakerstore.dart';
import 'package:flutter/material.dart';

import 'mobilestore.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black,
        ),
        title: Text(
          "All Categories",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: SizedBox(
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
                    MaterialPageRoute(builder: (context) => const SneakerStore()));
              },
              child: Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                          width: 200,
                          height: 150,
                          child: Image.asset(
                            "asset/image/shoe.jpg",
                          )),
                      const Text(
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
                      SizedBox(
                          width: 200,
                          height: 150,
                          child: Image.asset(
                            "asset/image/mobile.jpeg",
                          )),
                      const Text("Mobile")
                    ],
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const AccesoriesStore()));
              },
              child: Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                          width: 200,
                          height: 150,
                          child: Image.asset(
                            "asset/image/headphone.jpg",
                          )),
                      const Text("Accesories")
                    ],
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const PerfumeStore()));
              },
              child: Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                          width: 200,
                          height: 150,
                          child: Image.asset(
                            "asset/image/Perfume.jpg",
                          )),
                      const Text("Perfume")
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
