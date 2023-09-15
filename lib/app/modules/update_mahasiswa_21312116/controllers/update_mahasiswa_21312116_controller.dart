
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UpdateMahasiswa21312116Controller extends GetxController {
  late TextEditingController cNama;
  late TextEditingController cNPM;
  late TextEditingController cAlamat;

  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<DocumentSnapshot<Object?>> getData(String id) async{
    DocumentReference docRef = firestore.collection("mahasiswa_21312116").doc(id);

    return docRef.get();
  }

  void updateMahasiswa21312116(String npm, String nama, String alamat) async {
    DocumentReference productById = firestore.collection("mahasiswa_21312116").doc(nama);
    try {
      await productById.update({
        "nama" : nama,
        "npm" : npm,
        "alamat" : alamat,
      });

      Get.defaultDialog(
        title: "Berhasil",
        middleText: "Berhasil mengubah data Mahasiswa.",
        onConfirm: () {
          cNPM.clear();
          cNama.clear();
          cAlamat.clear();
          Get.back();
          Get.back();
        },
        textConfirm: "OK",
      );

    } catch (e) {
      print(e);
      Get.defaultDialog(
        title: "Terjadi kesalahan",
        middleText: "Gagal Mengubah Product.",
      );
    }
  }

  @override
  void onInit(){
  cNPM = TextEditingController();
  cNama=TextEditingController();
  cAlamat=TextEditingController();
  super.onInit();
  }

  void onClose() {

    cNPM.dispose();
    cNama.dispose();
    cAlamat.dispose();
    super.onClose();
  }
}