// import 'dart:js_interop_unsafe';
import 'package:ecommerceapp/Screens/cart.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:carousel_slider/carousel_slider.dart';
// ignore: depend_on_referenced_packages
import 'package:readmore/readmore.dart';
// ignore: depend_on_referenced_packages
import 'package:provider/provider.dart';

import '../Provider/count_provider.dart';


class Denver extends StatefulWidget {
  @override
  State<Denver> createState() => _DenverState();
}

class _DenverState extends State<Denver> {
  // var is_selected=false;
  var quan=1;
  var quancontroller=TextEditingController(text: "1");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CarouselSlider(
            items: [
              Image.asset("asset/image/denver1.jpg"),
              Image.asset("asset/image/denver2.jpg"),
              Image.asset("asset/image/denver3.jpg"),
              Image.asset("asset/image/denver4.jpg"),
            ],
            options: CarouselOptions(height: 200),
          ),
          const SizedBox(
            height: 20,
            width: double.infinity,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 5,bottom: 5),
            child: Text("DENVER Imperial Deodorant - 165ML | Long Lasting Deo Body Spray for Men",),
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
            child: Text("₹ 14,999.00"),
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
          //           label: Text("6"),
          //           selected: is_selected,
          //           color: MaterialStateColor.resolveWith(
          //                   (states) => Colors.black12),
          //           onSelected: (value) {}),
          //     ),
          //     Padding(
          //       padding: const EdgeInsets.all(8.0),
          //       child: ChoiceChip(
          //           label: Text("7"),
          //           selected: is_selected,
          //           color: MaterialStateColor.resolveWith(
          //                   (states) => Colors.black12),
          //           onSelected: (value) {}),
          //     ),
          //     Padding(
          //       padding: const EdgeInsets.all(8.0),
          //       child: ChoiceChip(
          //           label: Text("8"),
          //           selected: is_selected,
          //           color: MaterialStateColor.resolveWith(
          //                   (states) => Colors.black12),
          //           onSelected: (value) {}),
          //     ),
          //     Padding(
          //       padding: const EdgeInsets.all(8.0),
          //       child: ChoiceChip(
          //           label: Text("9"),
          //           selected: is_selected,
          //           color: MaterialStateColor.resolveWith(
          //                   (states) => Colors.black12),
          //           onSelected: (value) {}),
          //     ),
          //     Padding(
          //       padding: const EdgeInsets.all(8.0),
          //       child: ChoiceChip(
          //           label: Text("10"),
          //           selected: is_selected,
          //           color: MaterialStateColor.resolveWith(
          //                   (states) => Colors.black12),
          //           onSelected: (value) {}),
          //     ),
          //   ],
          // ),
//Quantity Selection
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
              child: const Center(
                child: Text("Add to Cart",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
              ),
              style: ButtonStyle(
                  backgroundColor:
                  MaterialStateColor.resolveWith((states) => Colors.blue)),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 5,bottom: 5),
            child: ReadMoreText(
              "REDUCES BODY ODOR : One of the primary benefits of deodorant is that it helps reduce body odor. Deodorants contain antimicrobial agents that help control the growth of odor-causing bacteria"
            "  KEEPS YOU FEELING FRESH : Using deodorant can help you feel fresh and clean throughout the day. It helps to mask unpleasant odors and can give you a sense of confidence."
         "  PREVENTS SWEAT STAINS : Deodorant can also help prevent sweat stains on your clothes. Some deodorants also contain antiperspirant agents that help reduce sweating."
         "   AROMA - The energizing male fragrance keeps your mood up all day. Energetic is a pleasant delight that keeps you engaged throughout the whole day longer due to its luxury passionate fragrances. Blow stress and fatigue a long goodbye for each sprinkling!"
          "  VARIETY OF FRAGRANCES : Deodorants come in a variety of fragrances, which can help you find a scent that you enjoy and that suits your personality",
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
