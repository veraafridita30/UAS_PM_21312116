import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/update_mahasiswa_21312116_controller.dart';

class UpdateMahasiswa21312116View extends GetView<UpdateMahasiswa21312116Controller> {
  const UpdateMahasiswa21312116View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ubah Data Mahasiswa'),
        leading: Image.asset(
            'assets/teknokrat.png'),
            backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: FutureBuilder<DocumentSnapshot<Object?>>(
        future: controller.getData(Get.arguments),
        builder: (context, snapshot) {
          if(snapshot.connectionState == ConnectionState.done) {
            return Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            TextField(
              controller: controller.cNPM,
              autocorrect: false,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(labelText: "NPM"),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: controller.cNama,
              autocorrect: false,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(labelText: "Nama"),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              controller: controller.cAlamat,
              autocorrect: false,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(labelText: "Alamat"),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: ()=> controller.updateMahasiswa21312116(
                controller.cNPM.text,
                controller.cNama.text,
                controller.cAlamat.text,
              ), 
              child: Text("Ubah"),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
              ),
              ),
          ],
        ),
        );
          }

          return Center(
            child: CircularProgressIndicator(),
          );
        },
      )
    );
  }
}