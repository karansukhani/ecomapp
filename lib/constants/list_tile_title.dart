import 'package:ecommerceapp/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Ksettingsmenutile extends StatelessWidget {
  const Ksettingsmenutile(
      {  required this.icon,
        required this.title,
        required this.subtitle,
      this.trailing});

  final IconData icon;
  final String title, subtitle;
  final Widget? trailing;
  @override
  Widget build(BuildContext context) {
    final dark =KHelperFunctions.isDarkMode(context);
    return ListTile(
      leading: Icon(
        icon,
        size: 28,
        color: Colors.blue,
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleMedium!.apply(color:dark ? Colors.white : Colors.black),
      ),
      subtitle: Text(
        subtitle,
        style: Theme.of(context).textTheme.labelMedium!.apply(color:dark ? Colors.white : Colors.black),
      ),
      trailing: trailing,
    );
  }
}
