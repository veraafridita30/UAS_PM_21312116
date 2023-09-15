import 'package:get/get.dart';

import '../modules/add_mahasiswa_21312116/bindings/add_mahasiswa_21312116_binding.dart';
import '../modules/add_mahasiswa_21312116/views/add_mahasiswa_21312116_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/resetpassword/bindings/resetpassword_binding.dart';
import '../modules/resetpassword/views/resetpassword_view.dart';
import '../modules/signup/bindings/signup_binding.dart';
import '../modules/signup/views/signup_view.dart';
import '../modules/update_mahasiswa_21312116/bindings/update_mahasiswa_21312116_binding.dart';
import '../modules/update_mahasiswa_21312116/views/update_mahasiswa_21312116_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => SignupView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.RESET_PASSWORD,
      page: () => ResetPasswordView(),
      binding: ResetPasswordBinding(),
    ),
    GetPage(
      name: _Paths.ADD_MAHASISWA_21312116,
      page: () => const AddMahasiswa21312116View(),
      binding: AddMahasiswa21312116Binding(),
    ),
    GetPage(
      name: _Paths.UPDATE_MAHASISWA_21312116,
      page: () => const UpdateMahasiswa21312116View(),
      binding: UpdateMahasiswa21312116Binding(),
    ),
  ];
}