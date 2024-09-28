import 'package:alpha/utils/colors.dart';
import 'package:alpha/utils/styles.dart';
import 'package:alpha/widgets/custom_nav_bar.dart';
import 'package:alpha/widgets/users_list_view.dart';
import 'package:flutter/material.dart';

class AdminViewBody extends StatelessWidget {
  const AdminViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                const CustomNavBar(),
                const SizedBox(height: 12),
                Text(
                  "Hello, Admin 👋🏻",
                  style: Styles.styleBold24(context).copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
                const SizedBox(height: 35),
                Text(
                  "New Users:",
                  style: Styles.styleBold18(context),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
          const UsersListView(),
        ],
      ),
    );
  }
}
