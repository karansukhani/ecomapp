import 'package:ecommerceapp/Screens/addresses.dart';
import 'package:ecommerceapp/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class Addnewaddress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Add New Address",style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.account_circle),
                      labelText: "Name",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(12),
                      ),
                  ),
                ),
                SizedBox(height: KSizes.spaceBtwInputFields,),
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.phone_android),
                      labelText: "Phone Number",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(12),
                      )
                  ),
                ),
                SizedBox(height: KSizes.spaceBtwInputFields,),
                Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.home),
                              labelText: "Street Address",
                              border: OutlineInputBorder(
                                borderSide: BorderSide(style: BorderStyle.solid),
                                borderRadius: BorderRadius.circular(12),
                              )
                          ),
                        ),
                      ),
                      SizedBox(width: KSizes.spaceBtwInputFields,),
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.chevron_right),
                              labelText: "Postal Code",
                            border: OutlineInputBorder(
                            borderSide: BorderSide(style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(12),
                            )),
                        ),
                      ),
                    ],
                ),
                SizedBox(height: KSizes.spaceBtwInputFields,),
                Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.business),
                              labelText: "City",
                              border: OutlineInputBorder(
                                borderSide: BorderSide(style: BorderStyle.solid),
                                borderRadius: BorderRadius.circular(12),
                              )
                          ),
                        ),
                      ),
                      SizedBox(width: KSizes.spaceBtwInputFields,),
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(CupertinoIcons.star_circle),
                              labelText: "State",
                            border: OutlineInputBorder(
                            borderSide: BorderSide(style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(12),
                            )),
                        ),
                      ),
                    ],
                ),
                SizedBox(height: KSizes.spaceBtwInputFields,),
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(CupertinoIcons.globe),
                      labelText: "Country",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(12),
                      )),
                ),
                SizedBox(height: KSizes.spaceBtwItems,),
                ElevatedButton(onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Addresses()));
                }, child: Text("Submit"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
