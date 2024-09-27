import 'package:alpha/utils/styles.dart';
import 'package:flutter/material.dart';

class NewArrivalsHeader extends StatelessWidget {
  const NewArrivalsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return  Text(
      "New Arrivals",
      style: Styles.styleBold24(context),
    );
  }
}