// import 'dart:js_interop_unsafe';
import 'package:ecommerceapp/Provider/count_provider.dart';
import 'package:ecommerceapp/Screens/cart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/services.dart';
import 'package:readmore/readmore.dart';
import 'package:provider/provider.dart';


class Adidas extends StatefulWidget {
  const Adidas({super.key});

  @override
  State<Adidas> createState() => _AdidasState();
}

class _AdidasState extends State<Adidas> {
var is_selected=false;
List<int> selected=[];
 // var quan=1;
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
          const SizedBox(
            height: 20,
            width: double.infinity,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 5,bottom: 5),
            child: Text("Adidas Originals",),
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
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ChoiceChip(
                    label: const Text("6"),
                    selected:  selected.contains(6)?true:false,
                    color: MaterialStateColor.resolveWith(
                        (states) => Colors.black12),
                    onSelected: (value) {
                      selected.add(6);
                      setState(() {

                      });
                    },
                    elevation: 10,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ChoiceChip(
                    label: const Text("7"),
                    selected: selected.contains(7)?true:false,
                    color: MaterialStateColor.resolveWith(
                        (states) => Colors.black12),
                    onSelected: (value) {
                      selected.add(7);
                      setState(() {

                      });
                    }),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ChoiceChip(
                    label: const Text("8"),
                    selected: selected.contains(8)?true:false,
                    color: MaterialStateColor.resolveWith(
                        (states) => Colors.black12),
                    onSelected: (value) {
                      selected.add(8);
                      setState(() {

                      });
                    }),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ChoiceChip(
                    label: const Text("9"),
                    selected: selected.contains(9)?true:false,
                    color: MaterialStateColor.resolveWith(
                        (states) => Colors.black12),
                    onSelected:(value){
                      selected.add(9);
                    }),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ChoiceChip(
                    label: const Text("10"),
                    selected: is_selected,
                    color: MaterialStateColor.resolveWith(
                        (states) => Colors.black12),
                    onSelected: (value) {}),
              ),
            ],
          ),
  // Quantity Select
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
