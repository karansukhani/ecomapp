// import 'dart:js';

import 'package:ecommerceapp/Screens/add_new_address.dart';
import 'package:ecommerceapp/constants/singleaddress.dart';
import 'package:ecommerceapp/constants/sizes.dart';
import 'package:ecommerceapp/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class Addresses extends StatelessWidget
{
  const Addresses({super.key});


  @override
  Widget build(BuildContext context) {
    final dark =KHelperFunctions.isDarkMode(context);
   return Scaffold(
     floatingActionButton: FloatingActionButton(
       onPressed: (){
       Navigator.push(context, MaterialPageRoute(builder: (context)=>const Addnewaddress()));
    },
       backgroundColor: Colors.blue,
       child: const Icon(Icons.add),

     ),
     appBar: AppBar(
       title: Text("Addresses",style: TextStyle(color: dark?Colors.black
       :Colors.white),),
       backgroundColor: dark?Colors.white:Colors.black,
       leading: BackButton(
         color:dark?Colors.black:Colors.white ,
       ),
     ),
     body: SingleChildScrollView(
       child: Padding(padding: const EdgeInsets.all(KSizes.sm),
         child: Column(
           children: [
          KAddresses(true, "82356 Timmy Coves, South Liana, Maine, 87665,USA"),
          KAddresses(false, "82342 Timmy Coves, South Liana, Maine, 87665,USA"),
          KAddresses(false, "82233 Cook  Coves, South Liana, Maine, 87665,USA"),
           ],
         ),
         
       ),
     ),
   );
  }

}