import 'dart:developer';

import 'package:alpha/widgets/user_list_view_item.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class UsersListView extends StatelessWidget {
  const UsersListView({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: FirebaseFirestore.instance.collection('Users').get(),
      builder: (context, snaptshot) {
        if (snaptshot.hasData) {
          final users = snaptshot.data!.docs.map((doc) => doc.data()).toList();
          log(users.toString());
          return SliverAnimatedList(
            initialItemCount: users.length,
            itemBuilder: (context, index, animation) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: UserListViewItem(
                  name: users[index]['name'],
                  status: users[index]['actif'],
                  id: users[index]['id'],
                ),
              );
            },
          );
        } else {
          return const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
