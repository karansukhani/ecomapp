import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Checkout extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body:CarouselSlider(items: [], options: CarouselOptions(height: 250),
      
    ) ,
   );
  }

}