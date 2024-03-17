import 'package:ecommerceapp/constants/sizes.dart';
import 'package:ecommerceapp/constants/text_strings.dart';
import 'package:ecommerceapp/Screens/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(),
     body: Padding(padding: EdgeInsets.all(8),
     child: Column
       (
       crossAxisAlignment: CrossAxisAlignment.center,
       children: [
          Text(KTexts.forgetPasswordTitle,style: Theme.of(context).textTheme.headlineMedium,),
         SizedBox(height: KSizes.spaceBtwItems,),
         Text(KTexts.homeAppbarSubTitle,style: Theme.of(context).textTheme.labelMedium,),
         SizedBox(height: KSizes.spaceBtwItems*2,),
         //Textfield
         TextFormField(
           decoration: InputDecoration(
             labelText: KTexts.email,
             prefixIcon: Icon(Icons.chevron_right),
             border: OutlineInputBorder(
               borderSide: BorderSide(style: BorderStyle.solid)
             )
           ),
         ),
         SizedBox(height: KSizes.spaceBtwItems,),
         //Submit Button
         ElevatedButton(onPressed: (){
           Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginState()));
         }, child: Text(KTexts.submit)),
       ],
     ),),
   );
  }

}