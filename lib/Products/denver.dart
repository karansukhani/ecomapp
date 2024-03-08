// import 'dart:js_interop_unsafe';
import 'package:ecommerceapp/cart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/services.dart';
import 'package:readmore/readmore.dart';


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
          Container(
            child: CarouselSlider(
              items: [
                Image.asset("asset/image/denver1.jpg"),
                Image.asset("asset/image/denver2.jpg"),
                Image.asset("asset/image/denver3.jpg"),
                Image.asset("asset/image/denver4.jpg"),
              ],
              options: CarouselOptions(height: 200),
            ),
          ),
          Container(
            height: 20,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5,bottom: 5),
            child: Text("DENVER Imperial Deodorant - 165ML | Long Lasting Deo Body Spray for Men",),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5,bottom: 5),
            child: Text(
              "TRAE YOUNG 3 'OFF WHITE/RED/CORE BLACK'",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5,bottom: 5),
            child: Text("₹ 14,999.00"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5,bottom: 5),
            child: Text("Stock : InStock"),
          ),
          Text("Size"),
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

          Row(
            children: [
              TextButton(onPressed: (){
                setState(() {
                  quan--;
                });
              }, child: Text("-",style: TextStyle(fontWeight: FontWeight.bold),)),
              SizedBox(
                width: 40,
                height: 20,
                child: TextFormField(
                  controller: quancontroller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        // borderSide: BorderSide(style: BorderStyle.solid),
                      )
                  ),
                ),
              ),
              TextButton(onPressed: (){
                setState(() {
                  quan++;
                });
              }, child: Text("+",style: TextStyle(fontWeight: FontWeight.bold),)),
            ],
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder:(context) =>CartState()));
              },
              child: Center(
                child: Text("Add to Cart",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
              ),
              style: ButtonStyle(
                  backgroundColor:
                  MaterialStateColor.resolveWith((states) => Colors.blue)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5,bottom: 5),
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
