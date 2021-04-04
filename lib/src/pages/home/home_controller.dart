import 'package:flutter/material.dart';

class HomeController{

  BuildContext context;
  Future init(BuildContext context){
    this.context = context;
  }

  void paginaLogin(){
    Navigator.pushNamed(context, "login");
  }

}
