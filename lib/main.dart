import 'package:ecommerceapp/Products/jordan.dart';
import 'package:ecommerceapp/Shop/controller/home_controller.dart';
import 'package:ecommerceapp/cart.dart';
import 'package:ecommerceapp/categoriespage.dart';
import 'package:ecommerceapp/constants/sizes.dart';
import 'package:ecommerceapp/constants/text_strings.dart';
import 'package:ecommerceapp/helpers/helper_functions.dart';
import 'package:ecommerceapp/login.dart';
import 'package:ecommerceapp/mobilestore.dart';
import 'package:provider/provider.dart';
// import 'package:ecommerceapp/navigation_bar.dart';
import 'package:ecommerceapp/perfumespage.dart';
// import 'package:ecommerceapp/profile.dart';
// import 'package:ecommerceapp/sneakerspage.dart';
import 'package:ecommerceapp/sneakerstore.dart';
// import 'package:ecommerceapp/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'Products/adidas.dart';
import 'Provider/count_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //If we want to use Multiprovider then we have to use multiprovider in place of Changenotificationprovider
    //And Provider array in which we give multiple ChangeNotifierProvide and create Provider
    return ChangeNotifierProvider(create: (_) =>CountProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Satguru Creations',
        theme: ThemeData(
          textTheme: const TextTheme(
              displayLarge: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.blue, fontSize: 20)),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
        ),
        home: LoginState(),
      ),

    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    final dark = KHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: dark ? Colors.black : Colors.white,
        title: Column(
          children: [
            Text(
              KTexts.homeAppbarTitle,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(color: Colors.grey),
            ),
            Text(
              KTexts.homeAppbarSubTitle,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .apply(color: Colors.black),
            ),
          ],
        ),
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
          )
        ],
        // title: SizedBox(
        //   width: double.infinity,
        //   child: Stack(children: [
        //     InkWell(
        //         onTap: () {
        //           Navigator.push(context,
        //               MaterialPageRoute(builder: (context) => Profilepage()));
        //         },
        //         child: CircleAvatar(
        //           backgroundImage: AssetImage("asset/image/admin.png"),
        //         )),
        //     Positioned(
        //         left: 100,
        //         right: 100,
        //         top: 10,
        //         child: Text(
        //           "Satguru Creations",
        //           style: Theme.of(context).textTheme.displayLarge,
        //         )),
        //     // Container(width: 70,),
        //     Positioned(
        //       right: 60,
        //       top: 10,
        //       child: Container(
        //         width: 20,
        //         height: 20,
        //         child: Image.asset(
        //           "asset/image/wishlist-1.png",
        //         ),
        //       ),
        //     ),
        //     Positioned(
        //         right: 0,
        //         top: 2,
        //         child: TextButton(
        //             onPressed: () {
        //               Navigator.push(
        //                   context,
        //                   MaterialPageRoute(
        //                       builder: (context) => CartState()));
        //             },
        //             child: Icon(
        //               Icons.shopping_cart,
        //               size: 30,
        //               color: Colors.black,
        //             )))
        //   ]),
        // ),
        automaticallyImplyLeading: false,
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
          Row(
            children: [
              const Text(
                "Popular Categories",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Container(
                width: 150,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Categories()));
                },
                child: const Text(
                  "VIEW ALL",
                  style: TextStyle(color: Colors.blue),
                ),
              )
            ],
          ),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SneakerStore()));
                      },
                      child: Column(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.white,
                              ),
                              height: 50,
                              width: 80,
                              child: Image.asset("asset/image/shoe.jpg")),
                          const Text(
                            "Shoes",
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MobileStore()));
                      },
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100)),
                            height: 50,
                            width: 80,
                            child: Image.asset(
                              "asset/image/mobile.jpeg",
                            ),
                          ),
                          const Text(
                            "Mobile",
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(
                      onPressed: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>MobileStore()));
                      },
                      child: Column(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100)),
                              height: 50,
                              width: 80,
                              child: Image.asset(
                                "asset/image/headphone.jpg",
                              )),
                          const Text(
                            "Accesories",
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PerfumeStore()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100)),
                              height: 50,
                              width: 80,
                              child: Image.asset(
                                "asset/image/Perfume.jpg",
                              )),
                          const Text(
                            "Perfume",
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )),
          CarouselSlider(
            items: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Image.asset("asset/image/temp1.jpg"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Image.asset("asset/image/banner_3.jpg"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Image.asset("asset/image/temp2.jpg"),
                ),
              ),
            ],
            options: CarouselOptions(
                height: 300,
                autoPlay: true,
                onPageChanged: (index, _) =>
                    controller.UpdatePageIndicator(index)),
          ),
          const SizedBox(
            height: KSizes.spaceBtwItems,
          ),
          // SizedBox(height: KSizes.spaceBtwItems),
          Obx(
            () => Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              for (int i = 0; i < 3; i++)
                Container(
                  width: 20,
                  height: 4,
                  margin: const EdgeInsets.only(right: 10),
                  padding: const EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    color: controller.CarouselCurrentIndex == i
                        ? Colors.blue
                        : Colors.grey,
                  ),
                ),
            ]),
          ),
          Row(
            children: [
              const Text(
                "New Arrivals",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              Container(
                width: 200,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SneakerStore()));
                },
                child: const Text(
                  "VIEW ALL",
                  style: TextStyle(color: Colors.blue),
                ),
              )
            ],
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Adidas()));
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.transparent,
                      blurRadius: 15,
                    )
                  ],
                  // border: Border.all(color: Colors.black)
                ),
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
                  context, MaterialPageRoute(builder: (context) => Jordan()));
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
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Adidas()));
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
          Padding(
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
          Padding(
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
        ]),
      ),
    );
  }
}
