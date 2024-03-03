import 'package:ecommerceapp/cart.dart';
import 'package:ecommerceapp/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/services.dart';
import 'package:readmore/readmore.dart';


class IPH15ProMax extends StatefulWidget {
  @override
  State<IPH15ProMax> createState() => _IPH15ProMaxState();
}

class _IPH15ProMaxState extends State<IPH15ProMax> {
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
                Image.asset("asset/image/iph15promax.jpg"),
                Image.asset("asset/image/iph15promax2.jpg"),
                Image.asset("asset/image/iph15promax3.jpg"),
                Image.asset("asset/image/iph15promax4.jpg"),
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
            child: Text("Apple iPhone 15 Pro Max (256 GB) - Blue Titanium",),
          ),
          // Padding(
          //   padding: const EdgeInsets.only(top: 5,bottom: 5),
          //   child: Text(
          //     "TRAE YOUNG 3 'OFF WHITE/RED/CORE BLACK'",
          //     style: TextStyle(fontWeight: FontWeight.bold),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.only(top: 5,bottom: 5),
            child: Text("-7% ₹1,48,900"),
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
                    label: Text("12GB+256GB"),
                    selected: is_selected,
                    color: MaterialStateColor.resolveWith(
                            (states) => Colors.black12),
                    onSelected: (value) {}),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ChoiceChip(
                    label: Text("12GB+512GB"),
                    selected: is_selected,
                    color: MaterialStateColor.resolveWith(
                            (states) => Colors.black12),
                    onSelected: (value) {}),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ChoiceChip(
                    label: Text("12GB+1TB"),
                    selected: is_selected,
                    color: MaterialStateColor.resolveWith(
                            (states) => Colors.black12),
                    onSelected: (value) {}),
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
          Text("Color"),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 80,
                  child: ChoiceChip(
                    label: Column(children: [
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
                  label: Column(children: [
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
          Row(
            children: [Text("Brand :",style:TextStyle(fontWeight: FontWeight.bold) ,),
              SizedBox(width: KSizes.defaultSpace,),
              Text(("Apple"))],
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
                Navigator.push(context, MaterialPageRoute(builder:(context) =>CartState(quancontroller.text.toString())));
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
          Padding(
            padding: const EdgeInsets.only(top: 5,bottom: 5),
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
