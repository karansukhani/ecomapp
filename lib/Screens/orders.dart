import 'package:ecommerceapp/constants/order_list.dart';
import 'package:ecommerceapp/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Orders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dark = KHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: dark ? Colors.white : Colors.black,
        title: Text(
          "Your Orders",
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .apply(color: dark ? Colors.black : Colors.white),
        ),
        automaticallyImplyLeading: true,
        leading: BackButton(
          color: dark ? Colors.black : Colors.white,
        ),
      ),
      body: const KOrderListItems(),
      // backgroundColor: dark ? Colors.white : Colors.black,
    );
  }
}
