import 'package:ecommerceapp/Products/denver.dart';
import 'package:ecommerceapp/Screens/perfumepage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Provider/count_provider.dart';
import '../constants/sizes.dart';
import 'cart.dart';
import '../helpers/helper_functions.dart';

class PerfumeStore extends StatelessWidget {
  const PerfumeStore({super.key});

// final TabController tabController=TabController(length: 4, vsync: AnimatedListState());
  @override
  Widget build(BuildContext context) {
    final countprovider = Provider.of<CountProvider>(context);
    final dark = KHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfume Store',
            style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          Stack(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const CartState()));
                  },
                  icon: const Icon(
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
                        countprovider.quan.toString(),
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
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                // borderSide: BorderSide(),
              ),
            )),
          ),
          //Brand Grid
          SizedBox(
            width: double.infinity,
            height: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  const Text(
                    "Popular Brands",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  // Container(
                  //   width: 200,
                  // ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const Perfume()));
                    },
                    child: const Text(
                      "VIEW ALL",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ]
            ),
          ),
          const Divider(color: Colors.white,),
          Wrap(
            spacing: 10,
            runSpacing: 4,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
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
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: dark ? Colors.black : Colors.white,
                          borderRadius: BorderRadius.circular(100)),
                      child: Center(
                        child: Image.asset("asset/logo/denver_logo.jpeg"),
                      ),
                    ),
                    Column(
                      children: [
                        const Text("Denver",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text(
                          "300 Products",
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
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: dark ? Colors.black : Colors.white,
                            borderRadius: BorderRadius.circular(100)),
                        child: Center(
                            child: Image.asset("asset/logo/919paris.jpeg"))),
                    Column(
                      children: [
                        const Text("919 PARIS",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text(
                          "200 Products",
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
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: dark ? Colors.black : Colors.white,
                            borderRadius: BorderRadius.circular(100)),
                        child:
                            Center(child: Image.asset("asset/logo/axe.jpeg"))),
                    Column(
                      children: [
                        const Text("AXE",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text(
                          "200 Products",
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
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: dark ? Colors.black : Colors.white,
                            borderRadius: BorderRadius.circular(100)),
                        child:
                            Center(child: Image.asset("asset/logo/ajmal.png"))),
                    Column(
                      children: [
                        const Text("Ajmal",
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
            ],
          ),
          const SizedBox(height: KSizes.spaceBtwItems,
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
                  onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>const Denver()));},
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(5)),
                      child: Column(
                        children: [
                          SizedBox(
                              height: 150,
                              child: Image.asset("asset/image/denver1.jpg")),
                          const Divider(thickness: 2,),
                          const Text(
                            "Denver Hamilton Mens",
                            style: TextStyle(color: Colors.black),
                          ),
                          const Text(
                            "₹ 350",
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>const Denver()));},
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(5)),
                      child: Column(
                        children: [
                          SizedBox(
                              height: 150,
                              child: Image.asset("asset/image/denver2.jpg")),
                          const Divider(thickness: 2,),
                          const Text(
                            "Denver Fresh Deodrant",
                            style: TextStyle(color: Colors.black),
                          ),
                          const Text(
                            "₹ 290.00",
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>const Denver()));},
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(5)),
                      child: Column(
                        children: [
                          SizedBox(
                              height: 150,
                              child: Image.asset("asset/image/denver3.jpg")),
                          const Divider(thickness: 2,),
                          const Text(
                            "Denver Green Mans",
                            style: TextStyle(color: Colors.black),
                          ),
                          const Text(
                            "₹ 290.00",
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 9),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>const Denver()));},
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(5)),
                      child: Column(
                        children: [
                          SizedBox(
                              height: 150,
                              child: Image.asset("asset/image/Perfume.jpg")),
                          const Divider(thickness: 2,),
                          const Text(
                            "Ocean Perfume",
                            style: TextStyle(color: Colors.black),
                          ),
                          const Text(
                            "₹ 250.00",
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),
                          )
                        ],
                      ),
                    ),
                  ),
                ]),
          ),
        ]),
      ),
    );
  }
}
