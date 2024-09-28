import 'package:alpha/services/database.dart';
import 'package:alpha/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomConfirmbutton extends StatefulWidget {
  const CustomConfirmbutton({
    super.key,
    required this.id,
    required this.actif,
  });

  final String id;
  final bool actif;

  @override
  State<CustomConfirmbutton> createState() => _CustomConfirmbuttonState();
}

class _CustomConfirmbuttonState extends State<CustomConfirmbutton> {
  late bool confirmed;
  @override
  void initState() {
    super.initState();
    confirmed = widget.actif;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: confirmed
          ? () {}
          : () async {
              await DatabaseMethods().confirmUser(widget.id);
              confirmed = true;
              setState(() {});
            },
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
        child: confirmed
            ? Icon(
                Icons.check,
                color: Theme.of(context).colorScheme.secondary,
                size: 34,
              )
            : Text(
                "Confirm",
                style: Styles.styleBold16(context).copyWith(
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
      ),
    );
  }
}
