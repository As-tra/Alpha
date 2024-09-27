import 'package:alpha/data.dart';
import 'package:alpha/widgets/custom_book_list_view.dart';
import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: categories.length,
      child: Column(
        children: [
          TabBar(
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            // indicator: const BoxDecoration(),
            dividerHeight: 0,
            dividerColor: const Color(0xff4C3657),
            tabs: categories
                .map(
                  (e) => Tab(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        e,
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 320,
            child: TabBarView(
              children: List.generate(
                categories.length,
                (index) {
                  return CustomBookListView(
                    books: books,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
