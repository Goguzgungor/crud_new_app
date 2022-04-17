import 'package:crud_app/firebase/core/constant/get_constant.dart';
import 'package:crud_app/firebase/core/menager/firestore_menager.dart';
import 'package:crud_app/memory/constants/hive_boxes.dart';
import 'package:crud_app/memory/hive_menager.dart';

class FirestoreGetData {
  Future<void> getUserData() async {
    List<dynamic> templist = [];
    List docs = await FirestoreManager.instance.getDocumentFromFirestore(UserConstant.USER);
    for (int i = 0; i < docs.length; i++) templist.add({UserConstant.NAME: docs[i][UserConstant.NAME], UserConstant.PHONE: docs[i][UserConstant.PHONE]});
    HiveManager.instance.addListToBox(HiveBoxes.USER, templist);
  }
}
