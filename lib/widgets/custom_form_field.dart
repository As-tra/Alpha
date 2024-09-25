import 'package:alpha/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomFormTextField extends StatelessWidget {
  const CustomFormTextField({
    super.key,
    required this.hintText,
    required this.controller,
  });
  final String hintText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: _buildDecoration(context),
      child: TextFormField(
        validator: (value) {
          if (value == null || value.trim().isEmpty) {
            return '* Field is Required';
          }
          return null;
        },
        controller: controller,
        decoration: InputDecoration(
          border: _buildBorder(context),
          enabledBorder: _buildBorder(context),
          focusedBorder: _buildBorder(context),
          hintText: hintText,
          hintStyle: Styles.styleRegular16(context).copyWith(
            color: const Color(0xff3C3C43).withOpacity(.5),
          ),
        ),
      ),
    );
  }

  BoxDecoration _buildDecoration(BuildContext context) {
    return BoxDecoration(
      color: Theme.of(context).colorScheme.surface,
      boxShadow: [
        BoxShadow(
          offset: const Offset(0, 1),
          spreadRadius: 5,
          blurRadius: 10,
          color: Theme.of(context).colorScheme.secondary.withOpacity(.05),
        )
      ],
    );
  }

  OutlineInputBorder _buildBorder(BuildContext context) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(5),
      borderSide: BorderSide(
        width: 0.5,
        color: Theme.of(context).colorScheme.onSurfaceVariant,
      ),
    );
  }
}
