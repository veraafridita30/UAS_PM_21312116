import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../controllers/auth_controller.dart';
import '../../../routes/app_pages.dart';
import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  final cAuth = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(
            'assets/teknokrat.png'),
            backgroundColor: Colors.red,
        title: const Text('Signup View'),
        centerTitle: true,
      ),
      body: Container(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: [
              TextField(
                controller: controller.cEmail,
                decoration: InputDecoration(
                  labelText: "Email",
                ),
              ),
              TextField(
                controller: controller.cPass,
                decoration: InputDecoration(
                  labelText: "Password",
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () => cAuth.signup(
                  controller.cEmail.text,
                  controller.cPass.text,
                ), 
                child: Text("Daftar")),
                SizedBox(
                height: 10,
              ),
            ],
          ),
        ));
  }
}