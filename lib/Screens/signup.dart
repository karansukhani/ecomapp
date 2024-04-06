import 'dart:convert';

import 'package:ecommerceapp/constants/sizes.dart';
import 'package:ecommerceapp/constants/text_strings.dart';
import 'package:ecommerceapp/Screens/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../constants/colors.dart';
import '../helpers/helper_functions.dart';

postdata(String fname,String lname,String email,String Phoneno,String pass)
async{
  final uri = Uri.parse("https://e-com.iappsolution.tech/api/user/register");
  http.Response response=await http.post(uri,body:{
    'firstname':fname,
    'lastname': lname,
    'email':email,
    'telephone': Phoneno,
    'password':pass
  });
  if(response.statusCode==200)
  {
    print(jsonDecode(response.body));
  }
  else
  {
    print("failed");
  }
}
class Signup extends StatelessWidget
{
  final fname=TextEditingController();
  final lname=TextEditingController();
  final email=TextEditingController();
  final phone=TextEditingController();
  final pass=TextEditingController();

  Signup({super.key});
  @override
  Widget build(BuildContext context) {
    final dark = KHelperFunctions.isDarkMode(context);
   return Scaffold(
     appBar: AppBar(),
     body: SingleChildScrollView(
       child: Padding(
         padding: const EdgeInsets.all(8),
         child: Column(
           children: [
             Text(KTexts.signupTitle,style: Theme.of(context).textTheme.headlineMedium,),

             //Form
             const SizedBox(height: 32,),
             Form(child: Column(
               children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: KTexts.firstName,
                      prefixIcon: Icon(Icons.account_circle),
                    ),
                    controller: fname,
                  ),
                 const SizedBox(width: KSizes.spaceBtwInputFields,),
                 TextFormField(
                    decoration: const InputDecoration(
                      labelText: KTexts.lastName,
                      prefixIcon: Icon(Icons.account_circle),
                    ),
                   controller: lname,
                  ),
                 const SizedBox(height: KSizes.spaceBtwItems,),
                 TextFormField(
                   decoration: const InputDecoration(
                     labelText: KTexts.username,
                     prefixIcon: Icon(Icons.account_box_rounded),
                   ),
                 ),
                 const SizedBox(height: KSizes.spaceBtwItems,),
                 TextFormField(
                   decoration: const InputDecoration(
                     labelText: KTexts.email,
                     prefixIcon: Icon(Icons.mail),
                   ),
                   controller: email,
                 ),
                 const SizedBox(height: KSizes.spaceBtwItems,),
                 TextFormField(
                   keyboardType: TextInputType.number,
                   decoration: const InputDecoration(
                     labelText: KTexts.phoneNo,
                     prefixIcon: Icon(Icons.mail),
                   ),
                   controller: phone,
                 ),
                 const SizedBox(height: KSizes.spaceBtwItems,),
                 TextFormField(
                   decoration: const InputDecoration(
                     labelText: KTexts.password,
                     prefixIcon: Icon(Icons.password),
                     suffixIcon: Icon(Icons.remove_red_eye),
                   ),
                   controller: pass,
                 ),
                 Row(
                   children: [
                     SizedBox(height:24,width:24,child: Checkbox(value: true, onChanged: (value){})),
                     RichText(text: TextSpan(
                       children: [
                         TextSpan(text: KTexts.iAgreeTo,style: Theme.of(context).textTheme.bodySmall),
                         TextSpan(text: KTexts.privacyPolicy,style: Theme.of(context).textTheme.bodySmall!.apply(
                           color: dark?Colors.white:Colors.black,
                           decoration: TextDecoration.underline,
                           decorationColor: dark?Colors.white:Colors.black,
                         )),
                         TextSpan(text: KTexts.and,style: Theme.of(context).textTheme.bodySmall),
                         TextSpan(text: KTexts.termsOfUse,style: Theme.of(context).textTheme.bodySmall!.apply(
                           color: dark?Colors.white:Colors.black,
                           decoration: TextDecoration.underline,
                           decorationColor: dark?Colors.white:Colors.black,
                         )),
                       ]
                     ),)
                   ],
                 ),
                 const SizedBox(height: KSizes.spaceBtwSections,),
                 SizedBox(width: double.infinity,child: ElevatedButton(onPressed: (){
                   postdata(fname.text.toString(), lname.text.toString(), email.text.toString(), phone.text.toString(), pass.text.toString());
                   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const LoginState()));
                 }, child: const Text(KTexts.createAccount)),),
                 const SizedBox(height: KSizes.spaceBtwSections,),
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
                 const SizedBox(
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