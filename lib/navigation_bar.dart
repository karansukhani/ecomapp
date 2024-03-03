import 'package:ecommerceapp/account.dart';
import 'package:ecommerceapp/cart.dart';
import 'package:ecommerceapp/categoriespage.dart';
import 'package:ecommerceapp/helpers/helper_functions.dart';
import 'package:ecommerceapp/main.dart';
import 'package:ecommerceapp/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Navigationmenu extends StatelessWidget {
  const Navigationmenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(Navigationcontroller());
    final dark = KHelperFunctions.isDarkMode(context);
    return Scaffold(
      backgroundColor: dark ? Colors.white : Colors.black,
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          backgroundColor: dark ? Colors.black : Colors.white,
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: "Home"),
            NavigationDestination(
                icon: Icon(Icons.shopping_cart_outlined), label: "Cart"),
            NavigationDestination(
                icon: Icon(Icons.account_circle_outlined), label: "Profile"),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class Navigationcontroller extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [MyHomePage(), CartState(""), Account()];
}
