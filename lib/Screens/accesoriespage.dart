import 'package:ecommerceapp/Products/airpods.dart';
import 'package:ecommerceapp/Products/boat_headphones.dart';
import 'package:flutter/material.dart';
// import 'package:readmore/readmore.dart';

class Accesories extends StatefulWidget {
  const Accesories({super.key});

  @override
  State<StatefulWidget> createState() {
    return Accesories_State();
  }
}

class Accesories_State extends State<Accesories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Accesories",
          style: TextStyle(color: Colors.white),
        ),
        leading: const BackButton(
          color: Colors.white,
        ),
      ),
      body: ListView(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) =>  const BoatHeadphones()));
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                decoration: const BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.transparent,
                    blurRadius: 15,
                  )
                ]),
                child: Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 10,
                        )
                      ]),
                      child: Container(
                        decoration: const BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 10,
                          )
                        ]),
                        child: Stack(
                          children: [
                            Image.asset("asset/image/boatheadphones1.webp"),
                          ],
                        ),
                      ),
                    ),
                    const Text(
                      "Boat Rockerz 1",
                      style: TextStyle(color: Colors.black),
                    ),
                    const Text(
                      "₹ 3,999.00",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    )
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) =>  const Airpodsmax()));
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                decoration: const BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.transparent,
                    blurRadius: 15,
                  )
                ]),
                child: Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 10,
                        )
                      ]),
                      child: Stack(
                        children: [
                          Image.asset("asset/image/airpods_max.jpeg"),
                        ],
                      ),
                    ),
                    const Text(
                      "Airpods Max",
                      style: TextStyle(color: Colors.black),
                    ),
                    const Text(
                      "₹ 59,900.00",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const BoatHeadphones()));
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                decoration: const BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.transparent,
                    blurRadius: 15,
                  )
                ]),
                child: Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 10,
                        )
                      ]),
                      child: Stack(
                        children: [
                          Image.asset("asset/image/jblheadphones.jpeg"),
                        ],
                      ),
                    ),
                    const Text(
                      "JBL x Under Armour",
                      style: TextStyle(color: Colors.black),
                    ),
                    const Text(
                      "₹ 11,999.00",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const Airpodsmax()));
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                decoration: const BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.transparent,
                    blurRadius: 15,
                  )
                ]),
                child: Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 10,
                        )
                      ]),
                      child: Stack(
                        children: [
                          Image.asset("asset/image/zebronicsheadphones.webp"),
                        ],
                      ),
                    ),
                    const Text(
                      "Zebronics Duke",
                      style: TextStyle(color: Colors.black),
                    ),
                    const Text(
                      "₹ 2,499.00",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
