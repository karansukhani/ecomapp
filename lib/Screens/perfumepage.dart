import 'package:ecommerceapp/Products/denver.dart';
import 'package:flutter/material.dart';
// import 'package:readmore/readmore.dart';

class Perfume extends StatefulWidget {
  const Perfume({super.key});

  @override
  State<StatefulWidget> createState() {
    return Perfume_State();
  }
}

class Perfume_State extends State<Perfume> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Perfumes",
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
                  context, MaterialPageRoute(builder: (context) =>  const Denver()));
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
                            Image.asset("asset/image/denver1.jpg"),
                          ],
                        ),
                      ),
                    ),
                    const Text(
                      "Denver Hamilton Mens",
                      style: TextStyle(color: Colors.black),
                    ),
                    const Text(
                      "₹ 350",
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
                  context, MaterialPageRoute(builder: (context) =>  const Denver()));
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
                          Image.asset("asset/image/denver2.jpg"),
                        ],
                      ),
                    ),
                    const Text(
                      "Denver Fresh Deodrant",
                      style: TextStyle(color: Colors.black),
                    ),
                    const Text(
                      "₹ 290.00",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const Denver()));
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
                          Image.asset("asset/image/denver3.jpg"),
                        ],
                      ),
                    ),
                    const Text(
                      "Denver Green Mans",
                      style: TextStyle(color: Colors.black),
                    ),
                    const Text(
                      "₹ 290.00",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const Denver()));
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
                          Image.asset("asset/image/Perfume.jpg"),
                        ],
                      ),
                    ),
                    const Text(
                      "Ocean Perfume",
                      style: TextStyle(color: Colors.black),
                    ),
                    const Text(
                      "₹ 250.00",
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
