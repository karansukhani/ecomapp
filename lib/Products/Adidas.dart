// import 'dart:js_interop_unsafe';
import 'dart:convert';

import 'package:ecommerceapp/Provider/count_provider.dart';
import 'package:ecommerceapp/Screens/cart.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:readmore/readmore.dart';
// ignore: depend_on_referenced_packages
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;



class Adidas extends StatefulWidget {
  const Adidas({super.key});

  @override
  State<Adidas> createState() => _AdidasState();
}

Map? mapresponse;

class _AdidasState extends State<Adidas> {
  postdata(String productid,String quan,String size,String productprice,String Pname)
  async{
    final uri = Uri.parse("https://e-com.iappsolution.tech/api/user/addToCart");
    http.Response response=await http.post(uri,body:{
      'product_id':productid,
      'quantity': quan,
      'size':size,
      'productTotalPrice': productprice,
      'productname':Pname

    });
    if(response.statusCode==202)
    {
      print(jsonDecode(response.body));
    }
    else
    {
      print("failed");
    }
  }
  final List<String> _productSizes = ['6', '7', '8', '9','10'];
  String _selectedSize='6';

// ignore: non_constant_identifier_names
var is_selected=false;
List<int> selected=[];
 // var quan=1;
var quancontroller=TextEditingController(text: "1");
  @override
  Widget build(BuildContext context) {
    final quanprovider=Provider.of<CountProvider>(context);
    return Scaffold(
      body: ListView(
        children: [
          CarouselSlider(
            items: [
              Image.asset("asset/image/Adidas-1.jpeg"),
              Image.asset("asset/image/Adidas-2.jpeg"),
              Image.asset("asset/image/Adidas-3.jpeg"),
              Image.asset("asset/image/Adidas-4.jpeg"),
            ],
            options: CarouselOptions(height: 200),
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
            children: _productSizes.map((e) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedSize = e;
                  });
                },
                child: AnimatedContainer(
                    width: 35,
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
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                              color: _selectedSize == e
                                  ? Colors.white
                                  : Colors.black),
                        ))),
              );
            }).toList(),
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
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder:(context) =>  CartState()));
                  postdata('1', quanprovider.quan.toString(), _selectedSize, '14,999.00','Adidas Originals');

                });
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
