import 'package:flutter/material.dart';

class RegisterController {
  BuildContext? context;
  TextEditingController emailController = new TextEditingController();
  TextEditingController nameController = new TextEditingController();
  TextEditingController lastnameController = new TextEditingController();
  TextEditingController phoneController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  TextEditingController confirmPasswordController = new TextEditingController();


  Future? init(BuildContext context){
    this.context = context;
  }

  void register(){
    String email = emailController.text.trim();
    String name = nameController.text.trim();
    String lastname = lastnameController.text.trim();
    String phone = phoneController.text.trim();
    String password = passwordController.text.trim();
    String confirmPassword = emailController.text.trim();


    print('email');
    print('name');
    print('lastname');
    print('phone');
    print('password');
    print('confirmpassword');
  }
}