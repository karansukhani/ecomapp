import 'package:ecommerceapp/constants/sizes.dart';
import 'package:ecommerceapp/constants/text_strings.dart';
import 'package:ecommerceapp/Screens/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../helpers/helper_functions.dart';

class Signup extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    final dark = KHelperFunctions.isDarkMode(context);
   return Scaffold(
     appBar: AppBar(),
     body: SingleChildScrollView(
       child: Padding(
         padding: EdgeInsets.all(8),
         child: Column(
           children: [
             Text(KTexts.signupTitle,style: Theme.of(context).textTheme.headlineMedium,),

             //Form
             SizedBox(height: 32,),
             Form(child: Column(
               children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: KTexts.firstName,
                      prefixIcon: Icon(Icons.account_circle),
                    ),
                  ),
                 SizedBox(width: KSizes.spaceBtwInputFields,),
                 TextFormField(
                    decoration: InputDecoration(
                      labelText: KTexts.lastName,
                      prefixIcon: Icon(Icons.account_circle),
                    ),
                  ),
                 SizedBox(height: KSizes.spaceBtwItems,),
                 TextFormField(
                   decoration: InputDecoration(
                     labelText: KTexts.username,
                     prefixIcon: Icon(Icons.account_box_rounded),
                   ),
                 ),
                 SizedBox(height: KSizes.spaceBtwItems,),
                 TextFormField(
                   decoration: InputDecoration(
                     labelText: KTexts.email,
                     prefixIcon: Icon(Icons.mail),
                   ),
                 ),
                 SizedBox(height: KSizes.spaceBtwItems,),
                 TextFormField(
                   keyboardType: TextInputType.number,
                   decoration: InputDecoration(
                     labelText: KTexts.phoneNo,
                     prefixIcon: Icon(Icons.mail),
                   ),
                 ),
                 SizedBox(height: KSizes.spaceBtwItems,),
                 TextFormField(
                   decoration: InputDecoration(
                     labelText: KTexts.password,
                     prefixIcon: Icon(Icons.password),
                     suffixIcon: Icon(Icons.remove_red_eye),
                   ),
                 ),
                 Row(
                   children: [
                     SizedBox(height:24,width:24,child: Checkbox(value: true, onChanged: (value){})),
                     RichText(text: TextSpan(
                       children: [
                         TextSpan(text: '${KTexts.iAgreeTo}',style: Theme.of(context).textTheme.bodySmall),
                         TextSpan(text: '${KTexts.privacyPolicy}',style: Theme.of(context).textTheme.bodySmall!.apply(
                           color: dark?Colors.white:Colors.black,
                           decoration: TextDecoration.underline,
                           decorationColor: dark?Colors.white:Colors.black,
                         )),
                         TextSpan(text: KTexts.and,style: Theme.of(context).textTheme.bodySmall),
                         TextSpan(text: '${KTexts.termsOfUse}',style: Theme.of(context).textTheme.bodySmall!.apply(
                           color: dark?Colors.white:Colors.black,
                           decoration: TextDecoration.underline,
                           decorationColor: dark?Colors.white:Colors.black,
                         )),
                       ]
                     ),)
                   ],
                 ),
                 SizedBox(height: KSizes.spaceBtwSections,),
                 SizedBox(width: double.infinity,child: ElevatedButton(onPressed: (){
                   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginState()));
                 }, child: Text(KTexts.createAccount)),),
                 SizedBox(height: KSizes.spaceBtwSections,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Divider(
                       color: dark ? TColors.darkGrey : TColors.grey,
                       thickness: 0.5,
                       indent: 60,
                       endIndent: 5,
                     ),
                     Text(
                       KTexts.orSignUpWith,
                       style: Theme.of(context).textTheme.labelMedium,
                     ),
                     Divider(
                       color: dark ? TColors.darkGrey : TColors.grey,
                       thickness: 0.5,
                       indent: 60,
                       endIndent: 5,
                     ),
                   ],
                 ),
                 SizedBox(
                   height: KSizes.spaceBtwSections,
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Container(
                       decoration: BoxDecoration(
                         border: Border.all(
                           color: TColors.grey,
                         ),
                         borderRadius: BorderRadius.circular(100),
                       ),
                       child: IconButton(
                         onPressed: () {},
                         icon: const Image(
                           height: KSizes.iconMd,
                           width: KSizes.iconMd,
                           image: AssetImage("asset/logo/google-icon.png"),
                         ),
                       ),
                     ),
                     Container(
                       decoration: BoxDecoration(
                         border: Border.all(
                           color: TColors.grey,
                         ),
                         borderRadius: BorderRadius.circular(100),
                       ),
                       child: IconButton(
                         onPressed: () {},
                         icon: const Image(
                           height: KSizes.iconMd,
                           width: KSizes.iconMd,
                           image: AssetImage("asset/logo/facebook-icon.png"),
                         ),
                       ),
                     )
                   ],
                 ),
               ],
             ))
           ],
         ),
       ),
     ),
   );
  }

}