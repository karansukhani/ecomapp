import 'package:ecommerceapp/Screens/addresses.dart';
import 'package:flutter/material.dart';

import '../constants/add_addressformat.dart';
// import 'package:cupertino_icons/cupertino_icons.dart';

class Addnewaddress extends StatelessWidget {
  const Addnewaddress({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Add New Address",style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
      ),
      body: Adress_section(button_label: 'Add Address',onpressed: (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Addresses()));
      },),
    );
  }
}


