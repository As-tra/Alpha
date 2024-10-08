import 'package:alpha/utils/assets.dart';
import 'package:alpha/utils/styles.dart';
import 'package:flutter/material.dart';

class EmptyView extends StatelessWidget {
  const EmptyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            Assets.imagesNotFound,
            color: Theme.of(context).colorScheme.secondary,
          ),
          const SizedBox(height: 32),
          Text("4 0 4", style: Styles.styleBold24(context)),
        ],
      ),
    );
  }
}
