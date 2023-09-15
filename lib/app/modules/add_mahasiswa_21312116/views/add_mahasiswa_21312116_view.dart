import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_mahasiswa_21312116_controller.dart';

class AddMahasiswa21312116View extends GetView<AddMahasiswa21312116Controller> {
  const AddMahasiswa21312116View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tambah Data Mahasiswa'),
        centerTitle: true,
        leading: Image.asset(
            'assets/teknokrat.png'),
            backgroundColor: Colors.red,
      ),
      body: Padding(
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
              onPressed: ()=> controller.mahasiswa21312116(
                controller.cNPM.text,
                controller.cNama.text,
                controller.cAlamat.text,
              ), 
              child: Text("Simpan"),
               style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
              ),
              ),
          ],
        ),
        ),
    );
  }
}