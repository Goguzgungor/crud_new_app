// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeViewModel on _HomeViewModelBase, Store {
  Computed<int>? _$lengthComputed;

  @override
  int get length => (_$lengthComputed ??=
          Computed<int>(() => super.length, name: '_HomeViewModelBase.length'))
      .value;

  final _$isVisibleAtom = Atom(name: '_HomeViewModelBase.isVisible');

  @override
  bool get isVisible {
    _$isVisibleAtom.reportRead();
    return super.isVisible;
  }

  @override
  set isVisible(bool value) {
    _$isVisibleAtom.reportWrite(value, super.isVisible, () {
      super.isVisible = value;
    });
  }

  final _$userListAtom = Atom(name: '_HomeViewModelBase.userList');

  @override
  ObservableList<dynamic> get userList {
    _$userListAtom.reportRead();
    return super.userList;
  }

  @override
  set userList(ObservableList<dynamic> value) {
    _$userListAtom.reportWrite(value, super.userList, () {
      super.userList = value;
    });
  }

  final _$visibListAtom = Atom(name: '_HomeViewModelBase.visibList');

  @override
  List<dynamic> get visibList {
    _$visibListAtom.reportRead();
    return super.visibList;
  }

  @override
  set visibList(List<dynamic> value) {
    _$visibListAtom.reportWrite(value, super.visibList, () {
      super.visibList = value;
    });
  }

  final _$changeVisAsyncAction = AsyncAction('_HomeViewModelBase.changeVis');

  @override
  Future changeVis(int index) {
    return _$changeVisAsyncAction.run(() => super.changeVis(index));
  }

  final _$_HomeViewModelBaseActionController =
      ActionController(name: '_HomeViewModelBase');

  @override
  void getData() {
    final _$actionInfo = _$_HomeViewModelBaseActionController.startAction(
        name: '_HomeViewModelBase.getData');
    try {
      return super.getData();
    } finally {
      _$_HomeViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isVisible: ${isVisible},
userList: ${userList},
visibList: ${visibList},
length: ${length}
    ''';
  }
}
