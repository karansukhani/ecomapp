// import 'dart:js_interop_unsafe';
import 'package:ecommerceapp/cart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/services.dart';
import 'package:readmore/readmore.dart';


class Adidas extends StatefulWidget {
  @override
  State<Adidas> createState() => _AdidasState();
}

class _AdidasState extends State<Adidas> {
var is_selected=false;
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
                Image.asset("asset/image/Adidas-1.jpeg"),
                Image.asset("asset/image/Adidas-2.jpeg"),
                Image.asset("asset/image/Adidas-3.jpeg"),
                Image.asset("asset/image/Adidas-4.jpeg"),
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
            child: Text("Adidas Originals",),
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
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ChoiceChip(
                    label: Text("6"),
                    selected: is_selected,
                    color: MaterialStateColor.resolveWith(
                        (states) => Colors.black12),
                    onSelected: (value) {}),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ChoiceChip(
                    label: Text("7"),
                    selected: is_selected,
                    color: MaterialStateColor.resolveWith(
                        (states) => Colors.black12),
                    onSelected: (value) {}),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ChoiceChip(
                    label: Text("8"),
                    selected: is_selected,
                    color: MaterialStateColor.resolveWith(
                        (states) => Colors.black12),
                    onSelected: (value) {}),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ChoiceChip(
                    label: Text("9"),
                    selected: is_selected,
                    color: MaterialStateColor.resolveWith(
                        (states) => Colors.black12),
                    onSelected: (value) {}),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ChoiceChip(
                    label: Text("10"),
                    selected: is_selected,
                    color: MaterialStateColor.resolveWith(
                        (states) => Colors.black12),
                    onSelected: (value) {}),
              ),
            ],
          ),

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
