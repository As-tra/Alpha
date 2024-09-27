import 'package:alpha/widgets/custom_nav_bar.dart';
import 'package:alpha/widgets/custom_search_widget.dart';
import 'package:alpha/widgets/custom_tab_bar.dart';
import 'package:alpha/widgets/new_arrivals_books.dart';
import 'package:alpha/widgets/welcome_widget.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 16),
          CustomNavBar(),
          SizedBox(height: 12),
          WelcomeWidget(),
          SizedBox(height: 24),
          CustomSearchWidget(),
          SizedBox(height: 24),
          CustomTabBar(),
          SizedBox(height: 28),
          NewArrivalsBooks(),
        ],
      ),
    );
  }
}
