import 'package:alpha/utils/styles.dart';
import 'package:alpha/views/empty_view.dart';
import 'package:alpha/views/profile_view.dart';
import 'package:alpha/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final List<Widget> views = const [
    HomeViewBody(),
    EmptyView(),
    EmptyView(),
    ProfileView(),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Theme.of(context).colorScheme.surface,
          body: views[currentIndex],
          bottomNavigationBar: SizedBox(
            height: 75,
            child: BottomNavigationBar(
              elevation: 8,
              showUnselectedLabels: true,
              backgroundColor: Theme.of(context).colorScheme.surface,
              currentIndex: currentIndex,
              selectedItemColor: Theme.of(context).colorScheme.primary,
              unselectedItemColor:
                  Theme.of(context).colorScheme.onSurfaceVariant,
              selectedLabelStyle: Styles.styleReglar12(context),
              unselectedLabelStyle: Styles.styleReglar12(context),
              onTap: (index) {
                currentIndex = index;
                setState(() {});
              },
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_border),
                  label: 'Saved',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.settings_outlined),
                  label: 'Settings',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Profile',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
