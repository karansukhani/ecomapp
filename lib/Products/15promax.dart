import 'package:ecommerceapp/Screens/cart.dart';
import 'package:ecommerceapp/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:readmore/readmore.dart';
import 'package:provider/provider.dart';

import '../Provider/count_provider.dart';


class IPH15ProMax extends StatefulWidget {
  const IPH15ProMax({super.key});

  @override
  State<IPH15ProMax> createState() => _IPH15ProMaxState();
}

class _IPH15ProMaxState extends State<IPH15ProMax> {
  final List<String> _productSizes = ['12GB + 256GB', '12GB + 512GB', '12GB + 1TB'];
  String _selectedSize='12GB + 256GB';
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
              Image.asset("asset/image/iph15promax.jpg"),
              Image.asset("asset/image/iph15promax2.jpg"),
              Image.asset("asset/image/iph15promax3.jpg"),
              Image.asset("asset/image/iph15promax4.jpg"),
            ],
            options: CarouselOptions(height: 200),
          ),
          const SizedBox(
            height: 20,
            width: double.infinity,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 5,bottom: 5),
            child: Text("Apple iPhone 15 Pro Max (256 GB) - Blue Titanium",),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 5,bottom: 5),
            child: Text("-7% ₹1,48,900"),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 5,bottom: 5),
            child: Text("Stock : InStock"),
          ),
          const Text("Size"),
          Row(
            children: _productSizes.map((e) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedSize = e;
                  });
                },
                child: AnimatedContainer(
                    width: 100,
                    height: 34,
                    margin: const EdgeInsets.only(right: 12),
                    duration: const Duration(seconds: 1),
                    decoration: BoxDecoration(
                        color: _selectedSize == e
                            ? Colors.blue
                            : Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                        child: Text(
                          e,
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w800,
                              color: _selectedSize == e
                                  ? Colors.white
                                  : Colors.black),
                        ))),
              );
            }).toList(),
          ),

          const Text("Color"),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 80,
                  child: ChoiceChip(
                    label: const Column(children: [
                      CircleAvatar(backgroundColor: Colors.black,),
                      Text("Black Titanium",style: TextStyle(color: Colors.black),),
                    ],),
                    selected: is_selected,
                    color: MaterialStateColor.resolveWith(
                            (states) => Colors.black12),
                    onSelected: (value) {},
                    backgroundColor: Colors.grey,),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ChoiceChip(
                  label: const Column(children: [
                    CircleAvatar(backgroundColor: Colors.blueGrey,),
                    Text("Blue Titanium",style: TextStyle(color: Colors.black),),
                  ],),
                  selected: is_selected,
                  color: MaterialStateColor.resolveWith(
                          (states) => Colors.black12),
                  onSelected: (value) {},
                  backgroundColor: Colors.black,),
              ),
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: ChoiceChip(
              //     label:Column(children: [
              //       CircleAvatar(backgroundColor: Colors.orange.shade50,),
              //       Text("Cream",style: TextStyle(color: Colors.black),),
              //     ],),
              //     selected: is_selected,
              //     color: MaterialStateColor.resolveWith(
              //             (states) => Colors.black12),
              //     onSelected: (value) {
              //
              //     },
              //     backgroundColor: Colors.purple,),
              // ),
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: ChoiceChip(
              //       label: Text("9"),
              //       selected: is_selected,
              //       color: MaterialStateColor.resolveWith(
              //               (states) => Colors.black12),
              //       onSelected: (value) {}),
              // ),
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: ChoiceChip(
              //       label: Text("10"),
              //       selected: is_selected,
              //       color: MaterialStateColor.resolveWith(
              //               (states) => Colors.black12),
              //       onSelected: (value) {}),
              // ),
            ],
          ),
          const Row(
            children: [Text("Brand :",style:TextStyle(fontWeight: FontWeight.bold) ,),
              SizedBox(width: KSizes.defaultSpace,),
              Text(("Apple"))],
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
 "   FORGED IN TITANIUM — iPhone 15 Pro Max has a strong and light aerospace-grade titanium design with a textured matte-glass back. It also features a Ceramic Shield front that’s tougher than any smartphone glass. And it’s splash, water, and dust resistant."
              ,trimLines: 4,
              trimCollapsedText: "Show more",
              trimExpandedText: "Show less",
              moreStyle: TextStyle(
                  fontWeight: FontWeight.bold
              ),
              lessStyle: TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 5,bottom: 5),
            child: ReadMoreText(
"ADVANCED DISPLAY — The 6.7” Super Retina XDR display with ProMotion ramps up refresh rates to 120Hz when you need exceptional graphics performance. Dynamic Island bubbles up alerts and Live Notifications. Plus, with Always-On display, your Lock Screen stays glanceable, so you don’t have to tap it to stay in the know."
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
