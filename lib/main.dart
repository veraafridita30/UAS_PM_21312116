import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:uas_21312116/app/controllers/auth_controller.dart';
import 'app/routes/app_pages.dart';
import 'app/utils/loading.dart';
import 'firebase_options.dart';
import 'package:google_sign_in/google_sign_in.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(
   Myapp()
  );
}

class Myapp extends StatelessWidget {
  final CAuth = Get.put(AuthController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream :CAuth.streamAuthStatus,
      builder: (context, snapshot){
        if(snapshot.connectionState == ConnectionState.active){
          return GetMaterialApp(
            title: "Application",
            initialRoute: 
            snapshot.data != null && snapshot.data!.emailVerified == true 
            ?Routes.HOME 
            : Routes.LOGIN,
            getPages: AppPages.routes,
          );
        }
        return Loading();
      },
    );
  }
}