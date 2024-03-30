import 'package:ecommerceapp/constants/sizes.dart';
import 'package:ecommerceapp/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class KOrderListItems extends StatelessWidget {
  const KOrderListItems ({super.key});
  @override
  Widget build(BuildContext context) {
    KHelperFunctions.isDarkMode(context);
    return ListView.separated(
      itemCount: 10,
      separatorBuilder: (__,index)=>const SizedBox(height: KSizes.spaceBtwItems,),
      itemBuilder:(__,index)=> Container(

        decoration: BoxDecoration(
          // color: dark? Colors.white:Colors.black,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black),
        ),
        child: Column
          (
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
              //Icon
                const Icon(Icons.local_shipping),
                const SizedBox(width: KSizes.spaceBtwItems/2,),

                //Processing
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Processing",style: Theme.of(context).textTheme.bodyLarge!.apply(color:Colors.blue,fontWeightDelta: 1),),
                      //Date
                      Text("07 Feb,2024",style: Theme.of(context).textTheme.headlineSmall!.apply(color: Colors.black),)
                    ],
                  ),
                ),
                IconButton(onPressed: (){}, icon: const Icon(Icons.chevron_right,size: KSizes.iconSm,)),

              ],
            ),
            const SizedBox(height: KSizes.spaceBtwItems/2,),
            // Roe #2
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                    //Icon
                      const Icon(Icons.flag),
                      const SizedBox(width: KSizes.spaceBtwItems/2,),

                      //Processing
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Order",style: Theme.of(context).textTheme.bodyLarge!.apply(color:Colors.blue,fontWeightDelta: 1),),
                            //Date
                            Text("#634668",style: Theme.of(context).textTheme.headlineSmall!.apply(color:Colors.black,)),
                          ],
                        ),
                      ),
                      // IconButton(onPressed: (){}, icon: Icon(Icons.chevron_right,size: KSizes.iconSm,)),

                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      //Icon
                      const Icon(Icons.perm_contact_calendar),
                      const SizedBox(width: KSizes.spaceBtwItems/2,),

                      //Processing
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Shipping Date :",style: Theme.of(context).textTheme.bodyLarge!.apply(color:Colors.blue,fontWeightDelta: 1),),
                            //Date
                            Text("9 Feb,2024",style: Theme.of(context).textTheme.headlineSmall!.apply(color:Colors.black),)
                          ],
                        ),
                      ),
                      // IconButton(onPressed: (){}, icon: Icon(Icons.chevron_right,size: KSizes.iconSm,)),

                    ],
                  ),
                ),
              ],
            ),
            // Status And Date


          ],
        ),
      ),
    );
  }

  }