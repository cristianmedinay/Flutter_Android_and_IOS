import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:simp_sa/src/pages/login/login_controller.dart';
import 'package:simp_sa/src/widgets/button_app.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}


class _LoginPageState extends State<LoginPage> {
  LoginController _con = new LoginController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //print('INIT STATE');

    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
        //print("ESCALE");
        _con.init(context);
    });

  }



  @override
  Widget build(BuildContext context) {
    //print('METODO STATE');

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        //child: Text('LOGIN PAGE'),
        child: Container(
          child: Column(
              children:[
          _fondoDecoration(),
          SizedBox(height: MediaQuery.of(context).size.height*0.10),
          _textDescription(),
          _textEmail(),
          _textPassword(),
          _buttonLogin()
          ],
      ),
        ),
      ),
    );
  }

  Widget _buttonLogin(){

    return Container(
        margin: EdgeInsets.symmetric(horizontal: 30,vertical: 30),
        child: ButtonApp(
            Colors.red,
            "Registrar",
            _con.Login
        )
    );
    /*
    Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 30,vertical: 30),
      child: RaisedButton(
          onPressed: (){},
          child: Text('Iniciar sesion',
            style: TextStyle(
              color:Colors.white
          ),
        ),
        color: Colors.teal,
      ),
    );
     */
  }

  Widget _textEmail(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
          controller: _con.emailController,
          decoration: InputDecoration(
            hintText: 'correo@gmail.com',
            labelText: 'Correo',
          ),
      ),
    );
  }
  Widget _textPassword(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        controller: _con.passController,
        obscureText: true,
        decoration: InputDecoration(
          labelText: 'Contraseña',
        ),
      ),
    );
  }
  Widget _textLogin(){
    return Container(
        alignment: Alignment.centerRight,
        margin: EdgeInsets.symmetric(horizontal: 30,vertical: 30),
        child: Container(
          child: Text(
          'Login',
          style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 28
          )
        ),
      )
    );
  }

  Widget _textDescription(){
    return Container(
      alignment: Alignment.centerRight,
      margin: EdgeInsets.symmetric(horizontal: 30,vertical: 30),
      child: Text(
        'Completa tus datos :',
         style: TextStyle(
          color:Colors.black54,
           fontSize: 24,
           fontFamily: 'NimbusSans'
        ),
      ),
    );
  }

  Widget _fondoDecoration(){
    return
      ClipPath(
        clipper: MovieTicketClipper(),
        child:  Container(
          color:Colors.blueGrey[500],
          height: MediaQuery.of(context).size.height * 0.20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                "assets/img/logo_app.png",
                width:150,
                height:100,

              ),
              _textLogin(),
            ],
          ),
        ),
      );
  }


}
