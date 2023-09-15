import 'package:get/get.dart';

import '../controllers/update_mahasiswa_21312116_controller.dart';

class UpdateMahasiswa21312116Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UpdateMahasiswa21312116Controller>(
      () => UpdateMahasiswa21312116Controller(),
    );
  }
}