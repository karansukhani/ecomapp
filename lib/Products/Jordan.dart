// import 'dart:js_interop_unsafe';
import 'package:ecommerceapp/Screens/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:readmore/readmore.dart';

import '../Provider/count_provider.dart';


class Jordan extends StatefulWidget {
  const Jordan({super.key});

  @override
  State<Jordan> createState() => _JordanState();
}

class _JordanState extends State<Jordan> {
  final List<String> product_Sizes = ['6', '7', '8', '9','10'];
  String selected_Size='6';
  var is_selected=false;
  var quan=1;
  var quancontroller=TextEditingController(text: "1");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CarouselSlider(
            items: [
              Image.asset("asset/image/Jordan1.jpeg"),
              Image.asset("asset/image/Jordan2.jpeg"),
              // Image.asset("asset/image/Adidas-3.jpeg"),
              // Image.asset("asset/image/Adidas-4.jpeg"),
            ],
            options: CarouselOptions(height: 200),
          ),
          const SizedBox(
            height: 20,
            width: double.infinity,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 5,bottom: 5),
            child: Text("Nike Air Jordans",),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 5,bottom: 5),
            child: Text(
              "TRAE YOUNG 3 'OFF WHITE/RED/CORE BLACK'",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 5,bottom: 5),
            child: Text("₹ 29,999.00"),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 5,bottom: 5),
            child: Text("Stock : InStock"),
          ),
          const Text("Size"),
          // Row(
          //   children: [
          //     Padding(
          //       padding: const EdgeInsets.all(8.0),
          //       child: ChoiceChip(
          //           label: const Text("6"),
          //           selected: is_selected,
          //           color: MaterialStateColor.resolveWith(
          //                   (states) => Colors.black12),
          //           onSelected: (value) {}),
          //     ),
          //     Padding(
          //       padding: const EdgeInsets.all(8.0),
          //       child: ChoiceChip(
          //           label: const Text("7"),
          //           selected: is_selected,
          //           color: MaterialStateColor.resolveWith(
          //                   (states) => Colors.black12),
          //        onSelected: (is_selected){
          //        }, ),
          //     ),
          //     Padding(
          //       padding: const EdgeInsets.all(8.0),
          //       child: ChoiceChip(
          //           label: const Text("8"),
          //           selected: is_selected,
          //           color: MaterialStateColor.resolveWith(
          //                   (states) => Colors.black12),
          //           onSelected: (value) {}),
          //     ),
          //     Padding(
          //       padding: const EdgeInsets.all(8.0),
          //       child: ChoiceChip(
          //           label: const Text("9"),
          //           selected: is_selected,
          //           color: MaterialStateColor.resolveWith(
          //                   (states) => Colors.black12),
          //           onSelected: (value) {}),
          //     ),
          //     Padding(
          //       padding: const EdgeInsets.all(8.0),
          //       child: ChoiceChip(
          //           label: const Text("10"),
          //           selected: is_selected,
          //           color: MaterialStateColor.resolveWith(
          //                   (states) => Colors.black12),
          //           onSelected: (value) {}),
          //     ),
          //   ],
          // ),
          Row(
            //Map Function will return the returning widget the no of times =elements in list
            children: product_Sizes.map((e) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selected_Size = e;
                  });
                },
                child: AnimatedContainer(
                    width: 35,
                    height: 34,
                    margin: const EdgeInsets.only(right: 12),
                    duration: const Duration(seconds: 1),
                    decoration: BoxDecoration(
                        color: selected_Size == e
                            ? Colors.blue
                            : Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                        child: Text(
                          e,
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                              color: selected_Size == e
                                  ? Colors.white
                                  : Colors.black),
                        ))),
              );
            }).toList(),
          ),
//Quantity selection
          Row(
            children: [
              Consumer<CountProvider>(builder: (context,value,child){
                return  TextButton(onPressed: (){
                  value.decrement();
                }, child: const Text("-",style: TextStyle(fontWeight: FontWeight.bold),));
              }),
              Consumer<CountProvider>(builder: (context,value,child){
                return
                  SizedBox(
                    width: 40,
                    height: 20,
                    child: Text(value.quan.toString()),
                  );
              }),

              Consumer<CountProvider>(builder: (context,value,child){
                return TextButton(onPressed: (){
                  value.increment();
                }, child: const Text("+",style: TextStyle(fontWeight: FontWeight.bold),));
              }),

            ],
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder:(context) =>CartState()));
              },
              style: ButtonStyle(
                  backgroundColor:
                  MaterialStateColor.resolveWith((states) => Colors.blue)),
              child: const Center(
                child: Text("Add to Cart",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 5,bottom: 5),
            child: ReadMoreText(
              "Crafted for agility and stability, the design blends Off White, Red, and Core Black hues. The Off White base contrasts with vibrant Red overlays and TPU Three Stripes on the sides. Black accents grace the tongues, laces, and heel counter. Engineered for peak performance, the midsole enables explosive moves, while the rubber outsole provides crucial support in quick maneuvers.",
              trimLines: 3,
              trimCollapsedText: "Show more",
              trimExpandedText: "Show less",
              moreStyle: TextStyle(
                  fontWeight: FontWeight.bold
              ),
              lessStyle: TextStyle(fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    );
  }
}
