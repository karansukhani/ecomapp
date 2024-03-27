import 'package:ecommerceapp/Screens/cart.dart';
import 'package:ecommerceapp/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:readmore/readmore.dart';
import 'package:provider/provider.dart';

import '../Provider/count_provider.dart';


class BoatHeadphones extends StatefulWidget {
  @override
  State<BoatHeadphones> createState() => BoatState();
}

class BoatState extends State<BoatHeadphones> {
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
                Image.asset("asset/image/boatheadphones1.webp"),
                Image.asset("asset/image/boatheadphones2.webp"),
              ],
              options: CarouselOptions(height: 200),
            ),
          ),
          const SizedBox(
            height: 20,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5,bottom: 5),
            child: Text("Rockerz 650 DC Edition",style: Theme.of(context).textTheme.bodyMedium,),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 5,bottom: 5),
            child: Text("-50% ₹1,999"),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 5,bottom: 5),
            child: Text("Stock : InStock"),
          ),

          const Row(
            children: [Text("Brand :",style:TextStyle(fontWeight: FontWeight.bold) ,),
              SizedBox(width: KSizes.defaultSpace,),
              Text(("Boat"))],
          ),

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
            "  Bluetooth Headphone with 40mm Dynamic Drivers, 60HRS Playback, ASAP™ Charge, Dual EQ Modes"

              "Read more at: https://www.boat-lifestyle.com/products/boat-rockerz-650-dc-edition-earbuds"
              ,trimLines: 4,
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
