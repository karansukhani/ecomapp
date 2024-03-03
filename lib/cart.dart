import 'package:ecommerceapp/Products/adidas.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartState extends StatefulWidget {
  var quantity;
  CartState(
    this.quantity,
  );

  @override
  State<CartState> createState() => _CartStateState();
}

class _CartStateState extends State<CartState> {
  // var nameofproduct;
  int quan = 1;
  var item = ["Adidas"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.black,
        ),
        title: Text(
          "Cart",
          style: Theme.of(context).textTheme.displaySmall,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: ListView.separated(
          separatorBuilder: (_, __) => const SizedBox(
            height: 10,
          ),
          itemCount: item.length,
          itemBuilder: (_, index) => Container(
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              border: Border.all(color: Colors.black),
              boxShadow: [
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
                  child: CircleAvatar(
                    backgroundImage: AssetImage(
                      "asset/image/Adidas-1.jpeg",
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Adidas"),
                    Text(
                      "₹ 14,999.00",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Size : 10UK",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: TextButton(
                      onPressed: () {
                        setState(() {
                          quan--;
                        });
                      },
                      child: Text("-",
                          style: TextStyle(fontWeight: FontWeight.bold))),
                ),
                Text("${quan.toString()}"),
                TextButton(
                    onPressed: () {
                      setState(() {
                        quan++;
                      });
                    },
                    child: Text(
                      "+",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
        ),
        child: Text(
          "Checkout",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
