import 'package:ecommerceapp/Screens/addresses.dart';
import 'package:ecommerceapp/Screens/orders.dart';
import 'package:ecommerceapp/Screens/cart.dart';
import 'package:ecommerceapp/constants/list_tile_title.dart';
import 'package:ecommerceapp/constants/sizes.dart';
import 'package:ecommerceapp/helpers/helper_functions.dart';
import 'package:ecommerceapp/Screens/profile.dart';
import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = KHelperFunctions.isDarkMode(context);
    return Scaffold(
      backgroundColor: dark ? Colors.black : Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.blue,
              padding: const EdgeInsets.all(0),
              child: AppBar(
                backgroundColor: Colors.blue,
                title: Text("Account Settings",
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .apply(color: dark ? Colors.white : Colors.black)),
              ),
            ),
            Container(
              color: Colors.blue,
              padding: const EdgeInsets.all(0),
              height: 100,
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundImage: AssetImage("asset/logo/applelogo.png"),
                ),
                title: Text(
                  "Karan Sukhani",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .apply(color: dark ? Colors.white : Colors.black),
                ),
                subtitle: Text(
                  "Ks35@gmail.com",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .apply(color: dark ? Colors.white : Colors.black),
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.edit),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Profilepage()));
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    "Account Settings",
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .apply(color: dark ? Colors.white : Colors.black),
                  ),
                  const SizedBox(
                    height: KSizes.spaceBtwItems,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(13)),
                    child: InkWell(
                      child: const Ksettingsmenutile(
                        icon: Icons.home,
                        title: "My Addresses",
                        subtitle: "Set Shopping Delivery Address",
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Addresses()));
                      },
                    ),
                  ),
                  const SizedBox(
                    height: KSizes.spaceBtwItems,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(13)),
                    child: InkWell(
                      child: const Ksettingsmenutile(
                        icon: Icons.shopping_cart_outlined,
                        title: "My Cart",
                        subtitle: "Add or Remove Products from your cart",
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CartState()));
                      },
                    ),
                  ),
                  const SizedBox(
                    height: KSizes.spaceBtwItems,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(13)),
                    child: InkWell(
                      child: const Ksettingsmenutile(
                        icon: Icons.card_travel,
                        title: "My Orders",
                        subtitle: "In-Progress and Completed Orders",
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const Orders()));
                      },
                    ),
                  ),
                  const SizedBox(
                    height: KSizes.spaceBtwItems,
                  ),
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(13)),
                      child: const Ksettingsmenutile(
                        icon: Icons.security,
                        title: "Account Privacy",
                        subtitle: "Manage Data usage and connections",
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
