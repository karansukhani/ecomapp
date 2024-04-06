import 'package:ecommerceapp/Products/15promax.dart';
import 'package:ecommerceapp/Products/s23ultra.dart';
import 'package:ecommerceapp/Products/s24ultra.dart';
import 'package:flutter/material.dart';
// import 'package:readmore/readmore.dart';

class Mobile extends StatefulWidget {
  const Mobile({super.key});

  @override
  State<StatefulWidget> createState() {
    return Mobile_State();
  }
}

class Mobile_State extends State<Mobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Smartphone",
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
                  context, MaterialPageRoute(builder: (context) => const S23ultra()));
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
                            Image.asset("asset/image/s23ultra.jpg"),
                            Positioned(
                                top: 10,
                                left: 4,
                                child: Container(
                                  height: 20,
                                  width: 40,
                                  color: Colors.yellowAccent,
                                  child: const Text(
                                    "-27%",
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
                      "Samsung Galaxy S23 Ultra",
                      style: TextStyle(color: Colors.black),
                    ),
                    const Text(
                      "₹ 1,09,999",
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
                  context, MaterialPageRoute(builder: (context) => const S24ultra()));
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
                          Image.asset("asset/image/s24ultra.jpg"),
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
                      "Samsung Galaxy S24 Ultra",
                      style: TextStyle(color: Colors.black),
                    ),
                    const Text(
                      "₹ 1,29,965",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const IPH15ProMax()));
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
                          Image.asset("asset/image/iph15promax.jpg"),
                          Positioned(
                              top: 10,
                              left: 4,
                              child: Container(
                                height: 20,
                                width: 40,
                                color: Colors.yellowAccent,
                                child: const Text(
                                  " -5%",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ))
                        ],
                      ),
                    ),
                    const Text(
                      "iPhone 15 Pro Max (256GB)",
                      style: TextStyle(color: Colors.black),
                    ),
                    const Text(
                      "₹ 1,48,900",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const IPH15ProMax()));
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
                          Image.asset("asset/image/15pro.jpg"),
                          Positioned(
                              top: 10,
                              left: 4,
                              child: Container(
                                height: 20,
                                width: 40,
                                color: Colors.yellowAccent,
                                child: const Text(
                                  " -5%",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ))
                        ],
                      ),
                    ),
                    const Text(
                      "iPhone 15 Pro (256GB)",
                      style: TextStyle(color: Colors.black),
                    ),
                    const Text(
                      "₹ 1,27,990",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const IPH15ProMax()));
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
                          Image.asset("asset/image/15pro.jpg"),
                          Positioned(
                              top: 10,
                              left: 4,
                              child: Container(
                                height: 20,
                                width: 40,
                                color: Colors.yellowAccent,
                                child: const Text(
                                  " -5%",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ))
                        ],
                      ),
                    ),
                    const Text(
                      "iPhone 15 Pro (256GB)",
                      style: TextStyle(color: Colors.black),
                    ),
                    const Text(
                      "₹ 1,27,990",
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
