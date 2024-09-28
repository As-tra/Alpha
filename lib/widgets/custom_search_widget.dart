import 'package:alpha/utils/assets.dart';
import 'package:alpha/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomSearchWidget extends StatelessWidget {
  const CustomSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      height: 60,
      decoration: BoxDecoration(
        border: Border.all(
          width: .5,
          color: Theme.of(context).colorScheme.onSurface,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.zero,
                border: InputBorder.none,
                hintText: 'Search here',
                hintStyle: Styles.styleRegular16(context),
                prefixIcon: Image.asset(
                  Assets.imagesSearch,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
            ),
          ),
          Image.asset(
            Assets.imagesMicro,
            color: Theme.of(context).colorScheme.onSurface,
          ),
          const SizedBox(width: 5),
          const VerticalDivider(color: Color(0xffe0e0e0)),
          const SizedBox(width: 14),
          Image.asset(Assets.imagesSettings),
        ],
      ),
    );
  }
}
