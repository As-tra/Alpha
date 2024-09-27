import 'package:flutter/material.dart';

class CustomBookDetailsAppBar extends StatefulWidget {
  const CustomBookDetailsAppBar({
    super.key,
  });

  @override
  State<CustomBookDetailsAppBar> createState() =>
      _CustomBookDetailsAppBarState();
}

class _CustomBookDetailsAppBarState extends State<CustomBookDetailsAppBar> {
  bool isLiked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back,
            size: 32,
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {
            isLiked = !isLiked;
            setState(() {});
          },
          icon: Icon(
            size: 27,
            Icons.favorite,
            color: isLiked
                ? Theme.of(context).colorScheme.primary
                : Theme.of(context).colorScheme.secondary,
          ),
        )
      ],
    );
  }
}
