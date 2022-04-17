import 'package:crud_app/components/custom_button.dart';
import 'package:crud_app/components/custom_contaier.dart';
import 'package:crud_app/components/custom_textfield.dart';
import 'package:crud_app/firebase/core/menager/firestore_menager.dart';
import 'package:crud_app/ui/home_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  HomeViewModel viewModel = HomeViewModel();
  TextEditingController nameCont = TextEditingController();
  TextEditingController phoneCont = TextEditingController();
  @override
  void initState() {
    super.initState();
    viewModel.getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, mainAxisSize: MainAxisSize.min, children: [
            SizedBox(
              height: 50,
            ),
            CustomTextF().mytextf('Name', TextInputType.name, nameCont),
            CustomTextF().mytextf('Phone Number', TextInputType.number, phoneCont),
            InkWell(
                onTap: () async {
                  await FirestoreManager.instance.addDocumenttoFirestore('users', nameCont.text, phoneCont.text);
                  viewModel.getData();
                },
                child: MyButton().customButton(context)),
            Container(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              child: Observer(builder: (_) {
                return ListView.builder(
                  itemCount: viewModel.length,
                  itemBuilder: (context, index) {
                    return CustomCont(
                      isVisible: viewModel.userList[index]['visible'],
                      name: viewModel.userList[index]['name'],
                      phone: viewModel.userList[index]['phone'],
                      onTap: () async => await viewModel.changeVis(index),
                    );
                  },
                );
              }),
            ),
          ]),
        ),
      ),
    );
  }
}
