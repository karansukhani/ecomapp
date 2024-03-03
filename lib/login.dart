import 'package:ecommerceapp/constants/colors.dart';
import 'package:ecommerceapp/constants/sizes.dart';
import 'package:ecommerceapp/constants/text_strings.dart';
import 'package:ecommerceapp/forget_pass.dart';
import 'package:ecommerceapp/helpers/helper_functions.dart';
import 'package:ecommerceapp/navigation_bar.dart';
import 'package:ecommerceapp/signup.dart';
import 'package:ecommerceapp/validators/validation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecommerceapp/main.dart';

class LoginState extends StatelessWidget {
  // const LoginState({super.key});

  var mailcontroller = TextEditingController();
  var passcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final dark = KHelperFunctions.isDarkMode(context);
    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(children: [
            /// Logo, Title & Sub-Title
            Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
              Image(
                height: 150,
                image: AssetImage(dark
                    ? "asset/logo/darkmode_logo.png"
                    : "asset/logo/lightmode_logo.png"),
              ),
              Text(
                "Login",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                KTexts.loginSubTitle,
                style: Theme.of(context).textTheme.bodyMedium,
              )
            ]),
            Form(
                child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_circle_rounded),
                    labelText: "Email",
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                TextFormField(
                  obscureText: true,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.remove_red_eye),
                      labelText: "Password"),
                ),
                SizedBox(
                  height: 32,
                ),

                //Remember me & forget password
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(value: true, onChanged: (value) {}),
                        Text(
                          "Remember Me",
                        ),
                      ],
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ForgetPassword()));
                        }, child: Text("Forgot Password ?")),
                  ],
                ),
                //Forgot Password

                SizedBox(
                  height: 32,
                ),
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Navigationmenu()));
                        },
                        child: Text(KTexts.signIn))),
                SizedBox(
                  height: KSizes.spaceBtwItems,
                ),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Signup()));
                    },
                    child: Text(KTexts.createAccount),
                  ),
                )
              ],
            )),

            //Divider
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
                  KTexts.orSignInWith,
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
          ]),
        )));
  }
}
