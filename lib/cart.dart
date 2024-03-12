import 'package:ecommerceapp/Products/adidas.dart';
import 'package:ecommerceapp/Provider/count_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class CartState extends StatefulWidget {
  var quantity = 1;

  CartState({super.key});
  // CartState(
  //   this.quantity,
  // );

  @override
  State<CartState> createState() => _CartStateState();
}

class _CartStateState extends State<CartState> {
  // var nameofproduct;
  var item = ["Adidas"];

  @override
  Widget build(BuildContext context) {
    print("build");
    // final quanProvider = Provider.of<CountProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black,
        ),
        title: Text(
          "Cart",
          style: Theme.of(context).textTheme.displaySmall,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: ListView.separated(
          separatorBuilder: (_, __) => const SizedBox(
            height: 10,
          ),
          itemCount: item.length,
          itemBuilder: (_, index) => Container(
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              border: Border.all(color: Colors.black),
              boxShadow: const [
                BoxShadow(color: Colors.transparent),
              ],
            ),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Adidas()));
                  },
                  child: const CircleAvatar(
                    backgroundImage: AssetImage(
                      "asset/image/Adidas-1.jpeg",
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Adidas"),
                    Text(
                      "₹ 14,999.00",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const Text(
                  "Size : 10UK",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Consumer<CountProvider>(builder: (context, value, child) {
                  // print("only build");
                  return Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: TextButton(
                        onPressed: () {
                          value.decrement();
                        },
                        child: const Text("-",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15))),
                  );
                }),

                Consumer<CountProvider>(builder: (context, value, child) {
                  // print("only build");
                  return Text(value.quan.toString());
                }),
                Consumer<CountProvider>(builder: (context, value, child) {
                  // print("only build");
                  return  TextButton(
                      onPressed: () {
                        value.increment();
                      },
                      child: const Text(
                        "+",
                        style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                      ));
                }),

              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
        ),
        child: Text(
          "Checkout",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
    // return Scaffold(
    //   appBar: AppBar(
    //     leading: const BackButton(
    //       color: Colors.black,
    //     ),
    //     title: Text(
    //       "Cart",
    //       style: Theme.of(context).textTheme.displaySmall,
    //     ),
    //   ),
    //   body: Padding(
    //     padding: const EdgeInsets.all(5),
    //     child: ListView.separated(
    //       separatorBuilder: (_, __) => const SizedBox(
    //         height: 10,
    //       ),
    //       itemCount: item.length,
    //       itemBuilder: (_, index) => Container(
    //         decoration: BoxDecoration(
    //           shape: BoxShape.rectangle,
    //           border: Border.all(color: Colors.black),
    //           boxShadow: const [
    //             BoxShadow(color: Colors.transparent),
    //           ],
    //         ),
    //         child: Row(
    //           children: [
    //             InkWell(
    //               onTap: () {
    //                 Navigator.push(context,
    //                     MaterialPageRoute(builder: (context) => Adidas()));
    //               },
    //               child: const CircleAvatar(
    //                 backgroundImage: AssetImage(
    //                   "asset/image/Adidas-1.jpeg",
    //                 ),
    //               ),
    //             ),
    //             const SizedBox(
    //               width: 20,
    //             ),
    //             const Column(
    //               crossAxisAlignment: CrossAxisAlignment.start,
    //               children: [
    //                 Text("Adidas"),
    //                 Text(
    //                   "₹ 14,999.00",
    //                   style: TextStyle(fontWeight: FontWeight.bold),
    //                 )
    //               ],
    //             ),
    //             const Text(
    //               "Size : 10UK",
    //               style: TextStyle(fontWeight: FontWeight.bold),
    //             ),
    //             Padding(
    //               padding: const EdgeInsets.only(left: 15),
    //               child: TextButton(
    //                   onPressed: () {
    //                    quanProvider.decrement();
    //                   },
    //                   child: const Text("-",
    //                       style: TextStyle(fontWeight: FontWeight.bold))),
    //             ),
    //             Consumer<CountProvider>(builder: (context,value,child)
    //             {
    //               print("only build");
    //               return Text(quanProvider.quan.toString());
    //             }),
    //             TextButton(
    //                 onPressed: () {
    //                  quanProvider.increment();
    //                 },
    //                 child: const Text(
    //                   "+",
    //                   style: TextStyle(fontWeight: FontWeight.bold),
    //                 ))
    //           ],
    //         ),
    //       ),
    //     ),
    //   ),
    //   bottomNavigationBar: ElevatedButton(
    //     onPressed: () {},
    //     style: ElevatedButton.styleFrom(
    //       backgroundColor: Colors.blue,
    //       padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
    //     ),
    //     child: Text(
    //       "Checkout",
    //       style: Theme.of(context).textTheme.headlineMedium,
    //     ),
    //   ),
    // );
  }
}
