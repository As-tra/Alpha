import 'package:alpha/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomPasswordField extends StatefulWidget {
  const CustomPasswordField({super.key, required this.controller, required this.hint});
  final TextEditingController controller;
  final String hint;

  @override
  State<CustomPasswordField> createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {
  bool showPassword = false;
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
        controller: widget.controller,
        obscureText: !showPassword,
        decoration: InputDecoration(
          border: _buildBorder(context),
          enabledBorder: _buildBorder(context),
          focusedBorder: _buildBorder(context),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 30, vertical: 18),
          hintText: widget.hint,
          hintStyle: Styles.styleRegular16(context).copyWith(
            color: const Color(0xff3C3C43).withOpacity(.5),
          ),
          suffixIcon: GestureDetector(
            onTap: () {
              showPassword = !showPassword;
              setState(() {});
            },
            child: Icon(showPassword ? Icons.visibility : Icons.visibility_off),
          ),
        ),
      ),
    );
  }
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
