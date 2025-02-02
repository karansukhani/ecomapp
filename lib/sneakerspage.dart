import 'package:ecommerceapp/Products/Adidas.dart';
import 'package:ecommerceapp/Products/Jordan.dart';
import 'package:flutter/material.dart';
// import 'package:readmore/readmore.dart';

class Footwear extends StatefulWidget {
  const Footwear({super.key});

  @override
  State<StatefulWidget> createState() {
    return Footwear_State();
  }
}

class Footwear_State extends State<Footwear> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Footwear",
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
                  context, MaterialPageRoute(builder: (context) => const Adidas()));
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
                            Image.asset("asset/image/Adidas-1.jpeg"),
                            Positioned(
                                top: 10,
                                left: 4,
                                child: Container(
                                  height: 20,
                                  width: 40,
                                  color: Colors.yellowAccent,
                                  child: const Text(
                                    " 25%",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ),
                    const Text(
                      "Adidas Red New Arrival",
                      style: TextStyle(color: Colors.black),
                    ),
                    const Text(
                      "₹25000",
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
                  context, MaterialPageRoute(builder: (context) => const Jordan()));
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
                          Image.asset("asset/image/Jordan1.jpeg"),
                          Positioned(
                              top: 10,
                              left: 4,
                              child: Container(
                                height: 20,
                                width: 40,
                                color: Colors.yellowAccent,
                                child: const Text(
                                  " 10%",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ))
                        ],
                      ),
                    ),
                    const Text(
                      " Mens Air Jordans",
                      style: TextStyle(color: Colors.black),
                    ),
                    const Text(
                      "₹30000",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const Adidas()));
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
                          Image.asset("asset/image/Adidas-1.jpeg"),
                          Positioned(
                              top: 10,
                              left: 4,
                              child: Container(
                                height: 20,
                                width: 40,
                                color: Colors.yellowAccent,
                                child: const Text(
                                  " 25%",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ))
                        ],
                      ),
                    ),
                    const Text(
                      "Mens Dunk Sneakers",
                      style: TextStyle(color: Colors.black),
                    ),
                    const Text(
                      "₹10000",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const Adidas()));
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
                          Image.asset("asset/image/bully.webp"),
                          Positioned(
                              top: 10,
                              left: 4,
                              child: Container(
                                height: 20,
                                width: 40,
                                color: Colors.yellowAccent,
                                child: const Text(
                                  " 10%",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ))
                        ],
                      ),
                    ),
                    const Text(
                      "BULLY SNEAKER 'BALCK/WHITE'",
                      style: TextStyle(color: Colors.black),
                    ),
                    const Text(
                      "₹29000",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const Jordan()));
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
                          Image.asset("asset/image/NikeDunk.png.webp"),
                          Positioned(
                              top: 10,
                              left: 4,
                              child: Container(
                                height: 20,
                                width: 40,
                                color: Colors.yellowAccent,
                                child: const Text(
                                  " 10%",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ))
                        ],
                      ),
                    ),
                    const Text(
                      "NIKE SB DUNK LOW THE POWERPUFF GIRLS BUBBLES",
                      style: TextStyle(color: Colors.black),
                    ),
                    const Text(
                      "₹43,500",
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
