import 'package:ecommerceapp/Screens/cart.dart';
import 'package:ecommerceapp/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:readmore/readmore.dart';
import 'package:provider/provider.dart';

import '../Provider/count_provider.dart';


class S23ultra extends StatefulWidget {
  const S23ultra({super.key});

  @override
  State<S23ultra> createState() => _S23ultraState();
}

class _S23ultraState extends State<S23ultra> {
  var is_selected=false;
  var quan=1;
  var quancontroller=TextEditingController(text: "1");
  final List<String> _productSizes = ['12GB + 256GB', '12GB + 512GB', '12GB + 1TB'];
  String _selectedSize='12GB + 256GB';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CarouselSlider(
            items: [
              Image.asset("asset/image/s23ultra.jpg"),
              Image.asset("asset/image/s23ultra2.jpg"),
              Image.asset("asset/image/s23ultra3.jpg"),
              Image.asset("asset/image/s23ultra4.jpg"),
            ],
            options: CarouselOptions(height: 200),
          ),
          const SizedBox(
            height: 20,
            width: double.infinity,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 5,bottom: 5),
            child: Text("Samsung Galaxy S23 Ultra 5G (Green, 12GB, 256GB Storage)",),
          ),
          // Padding(
          //   padding: const EdgeInsets.only(top: 5,bottom: 5),
          //   child: Text(
          //     "TRAE YOUNG 3 'OFF WHITE/RED/CORE BLACK'",
          //     style: TextStyle(fontWeight: FontWeight.bold),
          //   ),
          // ),
          const Padding(
            padding: EdgeInsets.only(top: 5,bottom: 5),
            child: Text("-27% ₹1,09,999"),
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
                      Text("Phantom Black",style: TextStyle(color: Colors.black),),
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
                    CircleAvatar(backgroundColor: Colors.lightGreen,),
                    Text("Green",style: TextStyle(color: Colors.black),),
                  ],),
                  selected: is_selected,
                  color: MaterialStateColor.resolveWith(
                          (states) => Colors.black12),
                  onSelected: (value) {},
                  backgroundColor: Colors.black,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ChoiceChip(
                  label:Column(children: [
                    CircleAvatar(backgroundColor: Colors.orange.shade50,),
                    const Text("Cream",style: TextStyle(color: Colors.black),),
                  ],),
                  selected: is_selected,
                  color: MaterialStateColor.resolveWith(
                          (states) => Colors.black12),
                  onSelected: (value) {

                  },
                  backgroundColor: Colors.purple,),
              ),
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
              Text(("Samsung"))],
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
            "  More innovation, less footprint – Galaxy S23 Ultra's striking symmetrical design returns with one major difference: recycled and eco-conscious materials. From the metal frame to the glass finish, it's polished with fresh new colors inspired by nature.vigate with precision your fingers wish they had on the new, flat display.,"
              "200MP. Wow-worthy resolution - Resolution on the Wide-angle Camera has nearly doubled, delivering strikingly clear photos. Zoom and crop your shots for a whole new view —or leave it intact for brilliant detail, corner to corner."
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
