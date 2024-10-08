import 'package:alpha/widgets/admin_view_body.dart';
import 'package:alpha/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class AdminView extends StatelessWidget {
  const AdminView({super.key});

  @override
  Widget build(BuildContext context) {
    return const PopScope(
      canPop: false,
      child: Scaffold(
        drawer: CustomDrawer(),
        body: AdminViewBody(),
      ),
    );
  }
}
