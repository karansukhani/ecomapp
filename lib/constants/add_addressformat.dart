import 'package:ecommerceapp/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Adress_section extends StatelessWidget {
  final String button_label;
  final VoidCallback? onpressed;
  const Adress_section({
    super.key,required this.button_label,required this.onpressed
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.account_circle),
                  labelText: "Name",
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              const SizedBox(height: KSizes.spaceBtwInputFields,),
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.phone_android),
                    labelText: "Phone Number",
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(12),
                    )
                ),
              ),
              const SizedBox(height: KSizes.spaceBtwInputFields,),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.home),
                          labelText: "Street Address",
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(12),
                          )
                      ),
                    ),
                  ),
                  const SizedBox(width: KSizes.spaceBtwInputFields,),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.chevron_right),
                          labelText: "Postal Code",
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(12),
                          )),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: KSizes.spaceBtwInputFields,),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.business),
                          labelText: "City",
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(12),
                          )
                      ),
                    ),
                  ),
                  const SizedBox(width: KSizes.spaceBtwInputFields,),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: const Icon(CupertinoIcons.star_circle),
                          labelText: "State",
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(12),
                          )),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: KSizes.spaceBtwInputFields,),
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(CupertinoIcons.globe),
                    labelText: "Country",
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(12),
                    )),
              ),
              const SizedBox(height: KSizes.spaceBtwItems,),
              ElevatedButton(onPressed: onpressed, child: Text(button_label))
            ],
          ),
        ),
      ),
    );
  }
}