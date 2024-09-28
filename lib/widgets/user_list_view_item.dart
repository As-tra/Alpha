import 'package:alpha/utils/styles.dart';
import 'package:alpha/widgets/custom_confirm_button.dart';
import 'package:flutter/material.dart';

class UserListViewItem extends StatelessWidget {
  const UserListViewItem(
      {super.key, required this.name, required this.id, required this.status});
  final String name;
  final String id;
  final bool status;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: .5,
          color: Theme.of(context).colorScheme.onSurface,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Icon(
                  Icons.person_2_outlined,
                  color: Theme.of(context).colorScheme.outlineVariant,
                ),
                const SizedBox(width: 12),
                Text(
                  name,
                  style: Styles.styleBold16(context),
                ),
              ],
            ),
          ),
          const Spacer(),
          CustomConfirmbutton(
            id: id,
            actif: status,
          ),
        ],
      ),
    );
  }
}
