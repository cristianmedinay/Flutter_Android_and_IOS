
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthProvider{

  FirebaseAuth _firebaseAuth;

  AuthProvider(){
    _firebaseAuth = FirebaseAuth.instance;
  }

  Future<bool> login(String email, String password) async {
    String errorMessage;
    try{
      await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
    }catch(error){
      print(error);
      //ERROR
      //NO HYA INTERNET
      //PASS INCORRECTO
      errorMessage=error.code;
    }
    if(errorMessage!=null){
      return Future.error(errorMessage);
    }
    return true;
  }

}