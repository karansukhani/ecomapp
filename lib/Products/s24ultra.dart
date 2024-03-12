import 'package:ecommerceapp/cart.dart';
import 'package:ecommerceapp/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:readmore/readmore.dart';
import 'package:provider/provider.dart';

import '../Provider/count_provider.dart';


class S24ultra extends StatefulWidget {
  const S24ultra({super.key});

  @override
  State<S24ultra> createState() => _S24ultraState();
}

class _S24ultraState extends State<S24ultra> {
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
              Image.asset("asset/image/s24ultra.jpg"),
              Image.asset("asset/image/s24ultra2.jpg"),
              Image.asset("asset/image/s24ultra3.jpg"),
              Image.asset("asset/image/s24ultra4.jpg"),
            ],
            options: CarouselOptions(height: 200),
          ),
          const SizedBox(
            height: 20,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5,bottom: 5),
            child: Text("Samsung Galaxy S24 Ultra 5G AI Smartphone (Titanium Gray, 12GB, 512GB Storage)",style: Theme.of(context).textTheme.headlineSmall,),
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
            child: Text("-7% ₹ 1,34,999 "),
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
                    label: const Text("12GB+256GB"),
                    selected: is_selected,
                    color: MaterialStateColor.resolveWith(
                            (states) => Colors.black12),
                    onSelected: (value) {}),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ChoiceChip(
                    label: const Text("12GB+512GB"),
                    selected: is_selected,
                    color: MaterialStateColor.resolveWith(
                            (states) => Colors.black12),
                    onSelected: (value) {}),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ChoiceChip(
                    label: const Text("12GB+1TB"),
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
          const Text("Color"),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ChoiceChip(
                      label: const Column(children: [
                        CircleAvatar(backgroundColor: Colors.grey,),
                        Text("Titanium Gray",style: TextStyle(color: Colors.black),),
                      ],),
                      selected: is_selected,
                      color: MaterialStateColor.resolveWith(
                              (states) => Colors.black12),
                      onSelected: (value) {},
                  backgroundColor: Colors.grey,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ChoiceChip(
                      label: const Column(children: [
                CircleAvatar(backgroundColor: Colors.black,),
                Text("Titanium Black",style: TextStyle(color: Colors.black),),
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
                      label: Column(children: [
                        CircleAvatar(backgroundColor: Colors.blue.shade900,),
                        const Text("Titanium Velvet",style: TextStyle(color: Colors.black),),
                      ],),
                      selected: is_selected,
                      color: MaterialStateColor.resolveWith(
                              (states) => Colors.black12),
                      onSelected: (value) {},
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
          "• Meet Galaxy S24 Ultra, the ultimate form of Galaxy Ultra with a new titanium exterior and a 17.25cm (6.8') flat display. It's an absolute marvel of design."
          "  The legacy of Galaxy Note is alive and well. Write, tap and navigate with precision your fingers wish they had on the new, flat display.,"
""
          
          " • Note's signature tool comes built in - The built-in S Pen keeps the legacy of Note alive. Plus, it helps you ditch the dependency on notebooks, making sketches and jotting notes effortless and eco-friendly."
            "  Low light. Camera. Action - A Pro-grade Camera grabs brighter photos and video, dusk to dawn. The intelligent pixel sensor adapts to low light with Nightography and the camera lens tones down flare for clearer captures",

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
