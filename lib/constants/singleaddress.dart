import 'package:ecommerceapp/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../helpers/helper_functions.dart';

class KAddresses extends StatelessWidget
{
  KAddresses(this.is_selected,this.address);
  final String address;
  final bool is_selected;
  @override
  Widget build(BuildContext context) {
    final dark =KHelperFunctions.isDarkMode(context);
    return Container(
      margin: EdgeInsets.all(KSizes.spaceBtwItems),
      padding: EdgeInsets.all(KSizes.md),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: is_selected?Colors.transparent: dark?Colors.black:Colors.grey),
        color:is_selected?Colors.blue:Colors.transparent,
      ),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(is_selected?Icons.check_circle:null,
            color: is_selected?dark?Colors.white:Colors.black :null,),
          ),
          Column(
            children: [
              Text(address,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
                style: TextStyle(color: dark?Colors.white
                    :Colors.black),
              ),
              const SizedBox(height: KSizes.sm/2,),
            ],
          )

        ],
      ),
    );
  }




}