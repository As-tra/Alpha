import 'dart:ui';

import 'package:flutter/material.dart';

class CustomBookCover extends StatelessWidget {
  const CustomBookCover({
    super.key,
    required this.image,
    required this.isLocked,
  });

  final String image;
  final bool isLocked;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: .7,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned.fill(
            child: Visibility(
              visible: isLocked,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 8.0,
                    sigmaY: 8.0,
                  ),
                  child: Icon(
                    Icons.lock,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
