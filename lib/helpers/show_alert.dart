import 'package:alpha/utils/styles.dart';
import 'package:flutter/material.dart';

Future<dynamic> customShowDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        alignment: Alignment.center,
        icon: Icon(
          Icons.report_problem_outlined,
          color: Theme.of(context).colorScheme.primary,
        ),
        title: Text(
          "Account is not Active",
          textAlign: TextAlign.center,
          style: Styles.styleBold18(context),
        ),
        content: Text(
          "Please wait for the admin to activate your account",
          textAlign: TextAlign.center,
          style: Styles.styleRegular16(context),
        ),
      );
    },
  );
}
