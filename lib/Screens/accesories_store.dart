import 'package:ecommerceapp/Products/boat_headphones.dart';
import 'package:ecommerceapp/Products/jordan.dart';
import 'package:flutter/material.dart';

import '../constants/sizes.dart';
import 'cart.dart';
import 'categoriespage.dart';
import '../helpers/helper_functions.dart';

class AccesoriesStore extends StatelessWidget {
  const AccesoriesStore({super.key});

// final TabController tabController=TabController(length: 4, vsync: AnimatedListState());
  @override
  Widget build(BuildContext context) {
    final dark = KHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Accesories Store', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          Stack(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CartState()));
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
            child: Stack(
                children:[
                  const Positioned(
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
                    top: 0,
                    right: 5,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Categories()));
                      },
                      child: const Text(
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
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: dark ? Colors.black : Colors.white,
                          borderRadius: BorderRadius.circular(100)),
                      child: Center(
                        child: Image.asset("asset/logo/boat.png"),
                      ),
                    ),
                    const Column(
                      children: [
                        Text("Boat",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text(
                          "300 Products",
                          style: TextStyle(fontSize: 10),
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
                        child: Center(child: Image.asset("asset/logo/applelogo.png"))),
                    Column(
                      children: [
                        const Text("Apple",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text(
                          "20 Products",
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
                            child: Image.asset("asset/logo/jbl_logo.jpeg"))),
                    Column(
                      children: [
                        const Text("JBL",
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
                        Center(child: Image.asset("asset/logo/zebronics.png"))),
                    Column(
                      children: [
                        const Text("Zebronics",
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
                    maxCrossAxisExtent:250,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    children: [
                      InkWell(
                        onTap:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>BoatHeadphones()));
                        },
                        child: Container(height: 100,
                          decoration: BoxDecoration(border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(5)),
                          child: Column(children: [
                            SizedBox(height:150,child: Image.asset("asset/image/boatheadphones1.webp")),
                            const Divider(thickness: 2,),
                            const Text("Boat Rockerz 1",style: TextStyle(color: Colors.black),),
                            const Text("₹ 3,999.00",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),)
                          ],),),
                      ),
                      Container(height: 100,
                        decoration: BoxDecoration(border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(5)),
                        child: Column(children: [
                          SizedBox(height:150,child: Image.asset("asset/image/airpods_max.jpeg")),
                          const Divider(thickness: 2,),
                          const Text("Airpods Max",style: TextStyle(color: Colors.black),),
                          const Text("₹ 59,900.00",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),)
                        ],),),
                      InkWell(
                        onTap:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Jordan()));
                        },
                        child: Container(height: 100,
                          decoration: BoxDecoration(border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(5)),
                          child: Column(children: [
                            SizedBox(height:150,child: Image.asset("asset/image/jblheadphones.jpeg")),
                            const Divider(thickness: 2,),
                            const Text("JBL x Under Armour",style: TextStyle(color: Colors.black),),
                            const Text("₹ 11,999.00",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),)
                          ],),),
                      ),
                      Container(height: 100,
                        decoration: BoxDecoration(border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(5)),
                        child: Column(children: [
                          SizedBox(height:150,child: Image.asset("asset/image/zebronicsheadphones.webp")),
                          const Divider(thickness: 2,),
                          const Text("Zebronics Duke",style: TextStyle(color: Colors.black),),
                          const Text("₹ 2,499.00",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),)
                        ],),),


                    ]
                ),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
