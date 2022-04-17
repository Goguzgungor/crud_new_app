import 'package:crud_app/firebase/core/menager/firestore_menager.dart';
import 'package:crud_app/memory/constants/hive_boxes.dart';
import 'package:crud_app/memory/hive_menager.dart';
import 'package:mobx/mobx.dart';

part 'home_viewmodel.g.dart';

class HomeViewModel = _HomeViewModelBase with _$HomeViewModel;

abstract class _HomeViewModelBase with Store {
  @observable
  bool isVisible = true;
  @observable
  ObservableList userList = ObservableList.of([]);
  @observable
  List visibList = [];
  @computed
  int get length => userList.length;

  @action
  changeVis(int index) async {
    await FirestoreManager.instance.removeDocumentformFirestore('users', userList[index]['phone']);
    userList.removeAt(index);
  }

  @action
  void getData() {
    List temp = HiveManager.instance.getListFromBox(HiveBoxes.USER);
    if (temp.isNotEmpty) userList = ObservableList.of(temp);
   
  }
}
