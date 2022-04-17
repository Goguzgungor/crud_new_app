import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crud_app/firebase/core/constant/get_constant.dart';
import 'package:crud_app/firebase/core/menager/get_data.dart';

class FirestoreManager {
  static FirestoreManager? _instance;
  static FirestoreManager get instance {
    _instance ??= FirestoreManager._init();
    return _instance!;
  }

  FirestoreManager._init();
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<List> getDocumentFromFirestore(String collectionName) async {
    CollectionReference datatable = firestore.collection(collectionName);
    QuerySnapshot data = await datatable.get();
    return data.docs;
  }

  Future<void> addDocumenttoFirestore(String collectionName, String name, String phone) async {
    await firestore.collection(collectionName).add({'name': name, 'phone': phone});
    await FirestoreGetData().getUserData();
  }

  Future<void> removeDocumentformFirestore(String collectionName, String phone) async {
    QuerySnapshot doc = await firestore.collection(collectionName).where(UserConstant.PHONE, isEqualTo: phone).get();
    doc.docs.forEach((element) => element.reference.delete());
  }
}
