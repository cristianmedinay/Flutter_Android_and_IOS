import 'package:flutter/material.dart';
import 'package:simp_sa/src/providers/auth_provider.dart';

class LoginController {

  BuildContext context;

  TextEditingController emailController = new TextEditingController();
  TextEditingController passController = new TextEditingController();

  AuthProvider _authProvider;

  Future init (BuildContext context){
    this.context = context;
    _authProvider = new AuthProvider();

  }

  void Login() async{

    String email = emailController.text;
    String password = passController.text;
    print('Email: $email');
    print('Password: $password');

    try{
     bool Login =  await _authProvider.login(email, password);
     if(Login){
       print('esta logeado');
     }else{
       print('no esta logeado');
     }
    }catch (error){
      print(error);
    }
  }



}

