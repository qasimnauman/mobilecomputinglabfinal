import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {

  Future addUser(Map<String, dynamic> userdata, String id) async {
    return await FirebaseFirestore.instance
      .collection("Users")
      .doc(id)
      .set(userdata);
  }

  Future <Stream<QuerySnapshot>> getUsers() async {
    return FirebaseFirestore.instance.collection("Users").snapshots();
  }

  Future updateuser(String id, Map<String, dynamic> updateduser) async {
    return await FirebaseFirestore.instance
      .collection("Users")
      .doc(id)
      .update(updateduser);
  }

  Future deleteUser(String id) async {
    return await FirebaseFirestore.instance
      .collection("Users")
      .doc(id)
      .delete();
  }
}