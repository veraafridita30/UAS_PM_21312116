import 'package:get/get.dart';

import '../controllers/add_mahasiswa_21312116_controller.dart';

class AddMahasiswa21312116Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddMahasiswa21312116Controller>(
      () => AddMahasiswa21312116Controller(),
    );
  }
}