import 'package:ecommerceapp/Products/product3.dart';
import 'package:ecommerceapp/Products/s23ultra.dart';
import 'package:ecommerceapp/Products/s24ultra.dart';
import 'package:ecommerceapp/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cart.dart';
import 'categoriespage.dart';
import '../helpers/helper_functions.dart';

class MobileStore extends StatelessWidget {
// final TabController tabController=TabController(length: 4, vsync: AnimatedListState());
  @override
  Widget build(BuildContext context) {
    final dark = KHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Mobile Store',
            style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          Stack(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CartState()));
                  },
                  icon: Icon(
                    Icons.shopping_cart_rounded,
                    color: Colors.black,
                  )),
              Positioned(
                right: 0,
                child: Container(
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.yellowAccent.withOpacity(0.5),
                  ),
                  child: Center(
                      child: Text(
                    "2",
                    style: Theme.of(context).textTheme.labelLarge,
                  )),
                ),
              )
            ],
          ),
          //Searchbar
        ],
        automaticallyImplyLeading: true,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
                decoration: InputDecoration(
              hintText: "Search",
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                // borderSide: BorderSide(),
              ),
            )),
          ),
          //Brand Grid
          Container(
            width: double.infinity,
            height: 30,
            child: Stack(
                children:[
                  Positioned(
                    left:5,
                    child: Text(
                      "Popular Brands",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  // Container(
                  //   width: 200,
                  // ),
                  Positioned(
                    right: 5,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Categories()));
                      },
                      child: Text(
                        "VIEW ALL",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ),
                ]
            ),
          ),
          Divider(color: Colors.white,),
          Wrap(
            spacing: 10,
            crossAxisAlignment: WrapCrossAlignment.start,
            children: [
              Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    Container(
                      height: 30,
                      width: 60,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: dark ? Colors.black : Colors.white,
                          borderRadius: BorderRadius.circular(100)),
                      child: Center(
                        child: Image.asset("asset/logo/applelogo.png"),
                      ),
                    ),
                    Column(
                      children: [
                        const Text("Apple",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text(
                          "30 Products",
                          style: Theme.of(context).textTheme.bodySmall,
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    Container(
                        height: 30,
                        width: 60,
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: dark ? Colors.black : Colors.white,
                            borderRadius: BorderRadius.circular(100)),
                        child: Center(
                            child: Image.asset("asset/logo/oneplus_logo.png"))),
                    Column(
                      children: [
                        Text("Oneplus",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text(
                          "50 Products",
                          style: Theme.of(context).textTheme.bodySmall,
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    Container(
                        height: 30,
                        width: 60,
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: dark ? Colors.black : Colors.white,
                            borderRadius: BorderRadius.circular(100)),
                        child: Center(
                            child: Image.asset(
                                "asset/logo/samsung_logo.jpg.webp"))),
                    Column(
                      children: [
                        Text("Samsung",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text(
                          "100 Products",
                          style: Theme.of(context).textTheme.bodySmall,
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    Container(
                        height: 30,
                        width: 60,
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: dark ? Colors.black : Colors.white,
                            borderRadius: BorderRadius.circular(100)),
                        child: Center(
                            child: Image.asset("asset/logo/oppo_logo.png"))),
                    Column(
                      children: [
                        Text("Oppo",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text(
                          "150 Products",
                          style: Theme.of(context).textTheme.bodySmall,
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: KSizes.spaceBtwItems,
                width: double.infinity,),
              SizedBox(
                height: 600,
                child: GridView.extent(
                    maxCrossAxisExtent: 250,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    children: [
                      //   Container(height: 100,
                      // child: Column(children: [
                      //   SizedBox(
                      //       height:50,
                      //       child: Image.asset("asset/image/Adidas-1.jpeg")),
                      //   Text("Adidas Yeezy Dunk Sneakers"),
                      //   Text("₹ 29000.00",style: TextStyle(fontWeight: FontWeight.bold),)
                      // ],),),
                      // Container(height: 100,
                      //   child: Column(children: [
                      //     SizedBox(height:50,child: Image.asset("asset/image/Adidas-1.jpeg")),
                      //     Text("Adidas Yeezy Dunk Sneakers"),
                      //     Text("₹ 29000.00",style: TextStyle(fontWeight: FontWeight.bold),)
                      //   ],),),
                      InkWell(
                        onTap:()
                        {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>IPH15ProMax()));
                        },
                        child: Container(
                          height: 100,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(5)),
                          child: Column(
                            children: [
                              SizedBox(
                                  height: 150,
                                  child:
                                      Image.asset("asset/image/iph15promax.jpg")),
                              const Divider(thickness: 2,),
                              Text(
                                "iPhone 15 Pro Max",
                                style: TextStyle(color: Colors.black),
                              ),
                              Text(
                                "₹ 1,48,900",
                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),
                              )
                            ],
                          ),
                        ),
                      ),
                      TextButton(
                       onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>S24ultra()));
                       },
                        child: Container(
                          // height: 400,
                          width: 220,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(5)),
                          child: Column(
                            children: [
                              SizedBox(
                                  height: 120,
                                  child: Image.asset("asset/image/s24ultra.jpg")),
                              const Divider(thickness: 2,),
                              Text(
                                "Samsung Galaxy S24 Ultra",
                                style: TextStyle(color: Colors.black),
                              ),
                              Text(
                                "₹ 1,29,965",
                                style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 9),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        // height: 100,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(5)),
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                SizedBox(
                                    height: 150,
                                    child:
                                        Image.asset("asset/image/15pro.jpg")),
                                Container(
                                  color: Colors.yellowAccent,
                                  child: Text("-5%"),
                                )
                              ],
                            ),
                            const Divider(thickness: 2,),
                            Text(
                              "iPhone 15 Pro (256GB)",
                              style: TextStyle(color: Colors.black),
                            ),
                            Text(
                              "₹ 1,27,990",
                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),
                            )
                          ],
                        ),
                      ),
                      TextButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>S23ultra()));
                        },
                        child: Container(
                          height: 300,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(5)),
                          child: Column(
                            children: [
                              Stack(children: [
                                SizedBox(
                                  height:120,
                                    child:
                                        Image.asset("asset/image/s23ultra.jpg")),
                                Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      color: Colors.yellow,
                                      child: Text("-27%"),
                                    ))
                              ]),
                              const Divider(thickness: 2,),
                              Text(
                                "Samsung Galaxy S23 Ultra",
                                style: TextStyle(color: Colors.black),
                              ),
                              Text(
                                "₹ 1,09,999",
                                style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 9),
                              )
                            ],
                          ),
                        ),
                      ),
                    ]),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
