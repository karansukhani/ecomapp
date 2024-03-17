import 'package:ecommerceapp/navigation_bar.dart';
import 'package:flutter/material.dart';

import 'constants/add_addressformat.dart';

class Checkout extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: const Text("Checkout"),
     ),
     body: Adress_section(button_label: "Confirm Order",onpressed: (){
       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const Navigationmenu()));
     },),
    // body:SingleChildScrollView(
    //   child: Column(
    //     children: [
    //       Row(
    //         children: [
    //           Expanded(
    //             child: TextFormField(
    //               decoration: InputDecoration(
    //                 label: Text(KTexts.firstName),
    //                 border: OutlineInputBorder(
    //                   borderSide: BorderSide(style: BorderStyle.solid),
    //                   borderRadius: BorderRadius.circular(12),
    //                 )
    //               ),
    //             ),
    //           ),
    //           SizedBox(width: KSizes.spaceBtwInputFields,),
    //           Expanded(
    //             child: TextFormField(
    //               decoration: InputDecoration(
    //                   label: Text(KTexts.lastName),
    //                   border: OutlineInputBorder(
    //                     borderSide: BorderSide(style: BorderStyle.solid),
    //                     borderRadius: BorderRadius.circular(12),
    //                   )
    //               ),
    //             ),
    //           ),
    //         ],
    //       ),
    //     ],
    //   ),
    //
    // ) ,
   );
  }

}