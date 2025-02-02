
import 'package:ecommerceapp/Products/Adidas.dart';
import 'package:ecommerceapp/Provider/count_provider.dart';
import 'package:ecommerceapp/checkout.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// ignore: must_be_immutable
class CartState extends StatefulWidget {


  const CartState({super.key});
  // CartState(
  //   this.quantity,
  // );

  @override
  State<CartState> createState() => _CartStateState();
}



class _CartStateState extends State<CartState> {
  // Future apicall() async {
  //   http.Response response = http.get(
  //     Uri.parse("https://e-com.iappsolution.tech/api/user/getCart"),) as http
  //       .Response;
  //   setState(() {
  //     var mapresponse = json.decode(response.body);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
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
          itemCount:1,
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
                        MaterialPageRoute(builder: (context) => const Adidas()));
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
                    Text('Adidas'),
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
        onPressed: () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Checkout()));
        },
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
  }
}
