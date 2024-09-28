import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethods {
  Future<void> addUserDetails(Map<String, dynamic> userInfo, String id) async {
    await FirebaseFirestore.instance.collection('Users').doc(id).set(userInfo);
  }

  Future<String?> getName(String id) async {
    try {
      DocumentSnapshot userDoc =
          await FirebaseFirestore.instance.collection('Users').doc(id).get();

      if (userDoc.exists && userDoc.data() != null) {
        return userDoc.get('name');
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }

  Future<bool?> getStatus(String id) async {
    log(id);
    try {
      DocumentSnapshot userDoc =
          await FirebaseFirestore.instance.collection('Users').doc(id).get();

      if (userDoc.exists && userDoc.data() != null) {
        return userDoc.get('actif');
      } else {
        return null;
      }
    } catch (e) {
      log("we have an erro :${e.toString()}");
      return null;
    }
  }

  Future<void> confirmUser(String id) async {
    log(id);
    try {
      await FirebaseFirestore.instance.collection('Users').doc(id).update(
        {"actif": true},
      );
    } catch (e) {
      log("Error when I update the user actif field");
    }
  }
}
