import 'package:crud_app/firebase/core/menager/get_data.dart';
import 'package:crud_app/memory/hive_menager.dart';
import 'package:crud_app/ui/home_view.dart';
import 'package:crud_app/ui/home_viewmodel.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await HiveManager.instance.hiveInit();
  await FirestoreGetData().getUserData();
  HomeViewModel().getData();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Crud App', debugShowCheckedModeBanner: false, home: HomeView());
  }
}
