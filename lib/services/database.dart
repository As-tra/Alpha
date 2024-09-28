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
}
