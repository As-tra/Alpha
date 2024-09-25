import 'package:alpha/utils/colors.dart';
import 'package:alpha/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.btnText,
    required this.textColor,
    required this.ontap,
    required this.bgColor,
  });
  final String btnText;
  final Color textColor;
  final Color bgColor;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: bgColor,
          border: Border.all(
            color: AppColors.backgroudColor,
          ),
        ),
        child: Text(
          btnText,
          textAlign: TextAlign.center,
          style: Styles.styleRegular18(context).copyWith(color: textColor),
        ),
      ),
    );
  }
}
