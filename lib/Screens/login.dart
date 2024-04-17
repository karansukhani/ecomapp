import 'dart:convert';
import 'package:ecommerceapp/constants/colors.dart';
import 'package:ecommerceapp/constants/sizes.dart';
import 'package:ecommerceapp/constants/text_strings.dart';
import 'package:ecommerceapp/Screens/forget_pass.dart';
import 'package:ecommerceapp/helpers/helper_functions.dart';
import 'package:ecommerceapp/navigation_bar.dart';
import 'package:ecommerceapp/Screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;


postdata(String email,String pass)
async{
  final uri = Uri.parse("https://e-com.iappsolution.tech/api/user/login");
  http.Response response=await http.post(uri,body:{
    'email':email,
    'password':pass
  });
  try {
    if (response.statusCode == 200) {
      print(jsonDecode(response.body));
    }
    else {
      print("failed");
    }
  }
  catch(e)
  {
    print(e);
  }
}
// ignore: must_be_immutable
class LoginState extends StatefulWidget {

  const LoginState({super.key});

  @override
  State<LoginState> createState() => _LoginStateState();
}

class _LoginStateState extends State<LoginState> {
  // const LoginState({super.key});
  var mailcontroller = TextEditingController();
  final formKey=GlobalKey<FormState>();

  var passcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey=GlobalKey<ScaffoldState>();
    final dark = KHelperFunctions.isDarkMode(context);
    return Scaffold(
      key: _scaffoldKey,
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(8),
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
              const SizedBox(
                height: 8,
              ),
              Text(
                KTexts.loginSubTitle,
                style: Theme.of(context).textTheme.bodyMedium,
              )
            ]),
            Form(
              key: formKey,
                child: Column(
              children: [
                TextFormField(
                  validator: (value) {
                    if ( value!.isEmpty || RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}').hasMatch(value)) {
                      return 'Please enter mail id';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.account_circle_rounded),
                    labelText: "Email",
                  ),
                  controller: mailcontroller,
                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  obscureText: true,
                  obscuringCharacter: "*",
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.remove_red_eye),
                      labelText: "Password"),
                  controller: passcontroller,
                ),
                const SizedBox(
                  height: 32,
                ),

                //Remember me & forget password
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(value: true, onChanged: (value) {}),
                        const Text(
                          "Remember Me",
                        ),
                      ],
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const ForgetPassword()));
                        }, child: const Text("Forgot Password ?")),
                  ],
                ),
                //Forgot Password

                const SizedBox(
                  height: 32,
                ),
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {
                          postdata(mailcontroller.text.toString(), passcontroller.text.toString());
                         Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Navigationmenu()));
                        },
                        child: const Text(KTexts.signIn))),
                const SizedBox(
                  height: KSizes.spaceBtwItems,
                ),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Signup()));
                    },
                    child: const Text(KTexts.createAccount),
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
          ]),
        )));
  }
}
